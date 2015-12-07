/*    Copyright (C) 2014 GP Orcullo
 *
 *    Portions of this code is based on stepgen.c by John Kasunich
 *
 *    This program is free software; you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation; either version 2 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program; if not, write to the Free Software
 *    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
 */

#include "rtapi.h"
#include "rtapi_app.h"
#include "hal.h"

#include <math.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>


#ifndef PICNC_H
#define PICNC_H

enum pin_input_names {
        HOME_X,
        HOME_Y,
        HOME_Z,
        HOME_A,
        STOP
};

enum pin_output_names {
        SPINDLE,
        MIST,
        FLOOD,
        OUTPUT
};

typedef enum {
        UNSUPPORTED,
        RPI,
        RPI_2,
        ODROID_C1
} platform_t;


#define NUMAXES                 4               /* X Y Z A*/
#define PWMCHANS                0
#define NUMOUTPUTS              16
#define NUMINPUTS               16

#define REQ_TIMEOUT             10000ul

#define SPIBUFSIZE              216             /* SPI buffer size */
#define BUFSIZE                 (SPIBUFSIZE/4)

#define STEPBIT                 22              /* bit location in DDS accum */
#define STEP_MASK               (1<<STEPBIT)

#define BASEFREQ                62500000ul              /* Base freq of the PIC stepgen in Hz */
#define SYS_FREQ                (40000000ul)    /* 40 MHz */

#define PERIODFP                ((double)1.0 / (double)(BASEFREQ))
#define VELSCALE                ((double)STEP_MASK * PERIODFP)
#define ACCELSCALE              (VELSCALE * PERIODFP)

#define get_position(a)         (rxBuf[1 + (a)])
#define update_velocity(a, b)   (txBuf[1 + (a)] = (b))

#define PAGE_SIZE               (4*1024)
#define BLOCK_SIZE              (4*1024)

#define CMD_CFG                 0x4746433E
#define CMD_TST                 0x5453543E
#define CMD_CM1                 0x314D433E
#define CMD_CM2                 0x324D433E
#define CMD_RST                 0x5453523E

/* Broadcom defines */

#define BCM2835_SPICLKDIV       16              /* ~8 Mhz */

#define BCM2835_PERI_BASE       0x20000000
#define BCM2709_OFFSET          0x1F000000
#define BCM2835_GPIO_BASE       (BCM2835_PERI_BASE + 0x200000) /* GPIO controller */
#define BCM2835_SPI_BASE        (BCM2835_PERI_BASE + 0x204000) /* SPI controller */

#define BCM2835_GPFSEL0         *(mem1)
#define BCM2835_GPFSEL1         *(mem1 + 1)
#define BCM2835_GPFSEL2         *(mem1 + 2)
#define BCM2835_GPFSEL3         *(mem1 + 3)
#define BCM2835_GPFSEL4         *(mem1 + 4)
#define BCM2835_GPFSEL5         *(mem1 + 5)
#define BCM2835_GPSET0          *(mem1 + 7)
#define BCM2835_GPSET1          *(mem1 + 8)
#define BCM2835_GPCLR0          *(mem1 + 10)
#define BCM2835_GPCLR1          *(mem1 + 11)
#define BCM2835_GPLEV0          *(mem1 + 13)
#define BCM2835_GPLEV1          *(mem1 + 14)

#define BCM2835_SPICS           *(mem2 + 0)
#define BCM2835_SPIFIFO         *(mem2 + 1)
#define BCM2835_SPICLK          *(mem2 + 2)

#define BCM_SPI_CS_DONE         0x00010000
#define BCM_SPI_CS_TA           0x00000080
#define BCM_SPI_CS_CLEAR_RX     0x00000020
#define BCM_SPI_CS_CLEAR_TX     0x00000010
#define BCM_SPI_CS_CPHA         0x00000004 | 0x00000008

#endif





#define getS32(source) ((source>>24)&0xff) | ((source<<8)&0xff0000) | ((source>>8)&0xff00) | ((source<<24)&0xff000000)
#define getS16(source) ((source>>8)&0xff) | ((source<<8)&0xff00)

/*
#if !defined(BUILD_SYS_USER_DSO)
 #error "This driver is for usermode threads only"
#endif
*/



#define MODNAME "fnc"
#define PREFIX "fnc"


MODULE_AUTHOR("Moritz Kunze");
MODULE_DESCRIPTION("Driver for Spartan3 based FNC Boards");
MODULE_LICENSE("GPL v2");

static int stepwidth = 1;
RTAPI_MP_INT(stepwidth, "Step width in 1/BASEFREQ");

static long pwmfreq = 1000;
RTAPI_MP_LONG(pwmfreq, "PWM frequency in Hz");

typedef struct {
	hal_float_t *position_cmd[NUMAXES],
	            *position_fb[NUMAXES];
	hal_s32_t   *position_fbr[NUMAXES],
		    *tstep[NUMAXES];
	hal_float_t *pwm_duty[PWMCHANS];
	hal_bit_t   *pin_output[NUMOUTPUTS],
	            *pin_input[NUMINPUTS],
	            *ready,
		    *spi_fault,
		    pwm_enable[PWMCHANS],
		    *enable[NUMAXES];
	hal_float_t scale[NUMAXES],
	            maxaccel[NUMAXES],
		    pwm_scale[PWMCHANS];
} data_t;


typedef struct {
	unsigned short cmd;
	short pw[4];
	short io1;
	short io2;
	char pwm1;
	char enable;
	short pwm2;
	short crc32;
	char _pad0[7]; 

} __attribute__((packed)) cmd_pos_t; // 28 byte
typedef struct {
	unsigned short code;
	unsigned long  pos[4];
	unsigned short io1;
	unsigned short io2;
	unsigned short drv;
	unsigned short crc32;
	char crcok;
	char _pad0[2];
} __attribute__((packed)) rep_pos_t; //  25bytes oO


static data_t *data;

static int comp_id;
static const char *modname = MODNAME;
static const char *prefix = PREFIX;

static platform_t platform;
volatile unsigned *mem1, *mem2;

volatile int32_t txBuf[BUFSIZE], rxBuf[BUFSIZE];
static unsigned long pwm_period = 0;

static double dt = 0,				/* update_freq period in seconds */
	recip_dt = 0,				/* reciprocal of period, avoids divides */
	scale_inv[NUMAXES] = { 1.0 },		/* inverse of scale */
	old_vel[NUMAXES] = { 0 },
	old_pos[NUMAXES] = { 0 },
	old_scale[NUMAXES] = { 0 },
	max_vel;
static long old_dtns = 0;			/* update_freq funct period in nsec */
static long accum_diff = 0,
	old_count[NUMAXES] = { 0 };
static long long accum[NUMAXES] = { 0 };		/* 64 bit DDS accumulator */

static void read_spi(void *arg, long period);
static void write_spi(void *arg, long period);
static void update(void *arg, long period);
static void update_outputs(data_t *dat);
static void update_inputs(data_t *dat);
static void (*read_buf)();
static void (*write_buf)();
static void rpi_read_buf();
static void rpi_write_buf();
static int map_gpio();
static void (*setup_gpio)();
static void (*restore_gpio)();
static void rpi_setup_gpio();
static void rpi_restore_gpio();

static cmd_pos_t cmd_pos;
static rep_pos_t rep_pos;

static void cmd01();


platform_t check_platform(void)
{
	FILE *fp;
	char buf[2048];
	size_t fsize;

	fp = fopen("/proc/cpuinfo", "r");
	fsize = fread(buf, 1, sizeof(buf), fp);
	fclose(fp);
	
	if (fsize == 0 || fsize == sizeof(buf))
		return 0;

	/* NUL terminate the buffer */
	buf[fsize] = '\0';

	if (NULL != strstr(buf, "BCM2708"))
		return RPI;
	else if (NULL != strstr(buf, "BCM2709"))
		return RPI_2;
	else
		return UNSUPPORTED;
}

int rtapi_app_main(void)
{
	char name[HAL_NAME_LEN + 1];
	int n, retval;

	platform = check_platform();

	switch (platform) {
	case RPI:
	case RPI_2:
		read_buf = rpi_read_buf;
		write_buf = rpi_write_buf;
		setup_gpio = rpi_setup_gpio;
		restore_gpio = rpi_restore_gpio;
		break;
	default:
		rtapi_print_msg(RTAPI_MSG_ERR, 
			"%s: ERROR: This driver is not for this platform.\n",
		        modname);
		return -1;
	}

	/* initialise driver */
	comp_id = hal_init(modname);
	if (comp_id < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR, "%s: ERROR: hal_init() failed\n",
		        modname);
		return -1;
	}

	/* allocate shared memory */
	data = hal_malloc(sizeof(data_t));
	if (data == 0) {
		rtapi_print_msg(RTAPI_MSG_ERR, "%s: ERROR: hal_malloc() failed\n",
		        modname);
		hal_exit(comp_id);
		return -1;
	}

	/* configure board */
	retval = map_gpio();
	if (retval < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR,
		        "%s: ERROR: cannot map GPIO memory\n", modname);
		return retval;
	}

	setup_gpio();

	pwm_period = (SYS_FREQ/pwmfreq) - 1;	/* PeripheralClock/pwmfreq - 1 */
	
//	txBuf[0] = CMD_CFG;		/* this is config data (>CFG) */
//	txBuf[1] = stepwidth;
//	txBuf[2] = pwm_period;
//	write_buf();	/* send config data */

        cmd_pos.cmd = 0xCA01;
        cmd_pos.pw[0] = 0;
        cmd_pos.pw[1] = 0;
        cmd_pos.pw[2] = 0;
        cmd_pos.pw[3] = 0;
        cmd_pos.io1 = 0;
        cmd_pos.io2 = 0;
        cmd_pos.enable = 0;
	cmd_pos.pwm1 = 0;
        cmd_pos.pwm2 = 0;
        cmd_pos.crc32 = 0;
        cmd_pos._pad0[0] = 0;
        cmd_pos._pad0[1] = 0;
        cmd_pos._pad0[2] = 0;
        cmd_pos._pad0[3] = 0;
        cmd_pos._pad0[4] = 0;
        cmd_pos._pad0[5] = 0;
        cmd_pos._pad0[6] = 0;
	cmd01();

	max_vel = BASEFREQ/(100);	/* calculate velocity limit */

	/* export pins and parameters */
	for (n=0; n<NUMAXES; n++) {
		retval = hal_pin_float_newf(HAL_IN, &(data->position_cmd[n]),
		        comp_id, "%s.axis.%01d.position-cmd", prefix, n);
		if (retval < 0) goto error;
		*(data->position_cmd[n]) = 0.0;

		retval = hal_pin_float_newf(HAL_OUT, &(data->position_fb[n]),
		        comp_id, "%s.axis.%01d.position-fb", prefix, n);
		if (retval < 0) goto error;
		*(data->position_fb[n]) = 0.0;

		retval = hal_pin_s32_newf(HAL_OUT, &(data->position_fbr[n]),
		        comp_id, "%s.axis.%01d.position-fbr", prefix, n);
		if (retval < 0) goto error;
		*(data->position_fbr[n]) = 0;

		retval = hal_pin_s32_newf(HAL_OUT, &(data->tstep[n]),
		        comp_id, "%s.axis.%01d.tstep", prefix, n);
		if (retval < 0) goto error;
		*(data->tstep[n]) = 0;

		retval = hal_param_float_newf(HAL_RW, &(data->scale[n]),
		        comp_id, "%s.axis.%01d.scale", prefix, n);
		if (retval < 0) goto error;
		data->scale[n] = 1.0;

		retval = hal_param_float_newf(HAL_RW, &(data->maxaccel[n]),
		        comp_id, "%s.axis.%01d.maxaccel", prefix, n);
		if (retval < 0) goto error;
		data->maxaccel[n] = 1.0;

		/*retval = hal_pin_bit_newf(HAL_OUT, &(data->pin_input[n]), 
			comp_id, "%s.axis.%01d.home", prefix, n);
		if (retval < 0) goto error;
		*(data->pin_input[n]) = 0;*/
		retval = hal_pin_bit_newf(HAL_IN, &(data->enable[n]),
			 comp_id, "%s.axis.%01d.enable", prefix,n);
		if (retval <0) goto error;
		*(data->enable[n]) = 0;

	}
	for (n=0; n<NUMINPUTS; n++) {
		retval = hal_pin_bit_newf(HAL_OUT, &(data->pin_input[n]),
                        comp_id, "%s.input.%01d", prefix, n);
                if (retval < 0) goto error;
                *(data->pin_input[n]) = 0;
	}
	for (n=0; n<NUMOUTPUTS; n++) {
		retval = hal_pin_bit_newf(HAL_IN, &(data->pin_output[n]),
                        comp_id, "%s.output.%01d", prefix, n);
                if (retval < 0) goto error;
                *(data->pin_output[n]) = 0;
	}
	/*retval = hal_pin_bit_newf(HAL_OUT, &(data->pin_input[STOP]), 
		comp_id, "%s.in.stop", prefix);
	if (retval < 0) goto error;
	*(data->pin_input[STOP]) = 0;

	retval = hal_pin_bit_newf(HAL_IN, &(data->pin_output[OUTPUT]),
		comp_id, "%s.out.enable", prefix);
	if (retval < 0) goto error;
	*(data->pin_output[OUTPUT]) = 0;

	retval = hal_pin_bit_newf(HAL_IN, &(data->pin_output[SPINDLE]),
		comp_id, "%s.spindle.enable", prefix);
	if (retval < 0) goto error;
	*(data->pin_output[SPINDLE]) = 0;

	retval = hal_param_bit_newf(HAL_RW, &(data->pwm_enable[SPINDLE]), 
		comp_id, "%s.spindle.pwm.enable", prefix);
	if (retval < 0) goto error;
	data->pwm_enable[SPINDLE] = 0;

	retval = hal_pin_float_newf(HAL_IN, &(data->pwm_duty[SPINDLE]),
		comp_id, "%s.spindle.pwm.duty", prefix, n);
	if (retval < 0) goto error;
	*(data->pwm_duty[SPINDLE]) = 0.0;

	retval = hal_param_float_newf(HAL_RW, &(data->pwm_scale[SPINDLE]),
		comp_id,"%s.spindle.pwm.scale", prefix);
	if (retval < 0) goto error;
	data->pwm_scale[SPINDLE] = 1.0;

	retval = hal_pin_bit_newf(HAL_IN, &(data->pin_output[MIST]),
		comp_id, "%s.mist.enable", prefix);
	if (retval < 0) goto error;
	*(data->pin_output[MIST]) = 0;

	retval = hal_param_bit_newf(HAL_RW, &(data->pwm_enable[MIST]),
		comp_id, "%s.mist.pwm.enable", prefix);
	if (retval < 0) goto error;
	data->pwm_enable[MIST] = 0;

	retval = hal_pin_float_newf(HAL_IN, &(data->pwm_duty[MIST]),
		comp_id, "%s.mist.pwm.duty", prefix, n);
	if (retval < 0) goto error;
	*(data->pwm_duty[MIST]) = 0.0;

	retval = hal_param_float_newf(HAL_RW, &(data->pwm_scale[MIST]),
		comp_id,"%s.mist.pwm.scale", prefix);
	if (retval < 0) goto error;
	data->pwm_scale[MIST] = 1.0;

	retval = hal_pin_bit_newf(HAL_IN, &(data->pin_output[FLOOD]),
		comp_id, "%s.flood.enable", prefix);
	if (retval < 0) goto error;
	*(data->pin_output[FLOOD]) = 0;

	retval = hal_param_bit_newf(HAL_RW, &(data->pwm_enable[FLOOD]),
		comp_id, "%s.flood.pwm.enable", prefix);
	if (retval < 0) goto error;
	data->pwm_enable[FLOOD] = 0;

	retval = hal_pin_float_newf(HAL_IN, &(data->pwm_duty[FLOOD]),
		comp_id, "%s.flood.pwm.duty", prefix, n);
	if (retval < 0) goto error;
	*(data->pwm_duty[FLOOD]) = 0.0;

	retval = hal_param_float_newf(HAL_RW, &(data->pwm_scale[FLOOD]),
		comp_id,"%s.flood.pwm.scale", prefix);
	if (retval < 0) goto error;
	data->pwm_scale[FLOOD] = 1.0;
	*/
	retval = hal_pin_bit_newf(HAL_OUT, &(data->ready), comp_id,
	        "%s.ready", prefix);
	if (retval < 0) goto error;
	*(data->ready) = 0;

	retval = hal_pin_bit_newf(HAL_IO, &(data->spi_fault), comp_id,
	        "%s.spi_fault", prefix);
	if (retval < 0) goto error;
	*(data->spi_fault) = 0;

error:
	if (retval < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR,
		        "%s: ERROR: pin export failed with err=%i\n",
		        modname, retval);
		hal_exit(comp_id);
		return -1;
	}

	/* export functions */
	rtapi_snprintf(name, sizeof(name), "%s.read", prefix);
	retval = hal_export_funct(name, read_spi, data, 1, 0, comp_id);
	if (retval < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR,
		        "%s: ERROR: read function export failed\n", modname);
		hal_exit(comp_id);
		return -1;
	}
	rtapi_snprintf(name, sizeof(name), "%s.write", prefix);
	/* no FP operations */
	retval = hal_export_funct(name, write_spi, data, 0, 0, comp_id);
	if (retval < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR,
		        "%s: ERROR: write function export failed\n", modname);
		hal_exit(comp_id);
		return -1;
	}
	rtapi_snprintf(name, sizeof(name), "%s.update", prefix);
	retval = hal_export_funct(name, update, data, 1, 0, comp_id);
	if (retval < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR,
		        "%s: ERROR: update function export failed\n", modname);
		hal_exit(comp_id);
		return -1;
	}

	rtapi_print_msg(RTAPI_MSG_INFO, "%s: installed driver\n", modname);
	hal_ready(comp_id);
	return 0;
}

void rtapi_app_exit(void)
{
	restore_gpio();
	munmap((void *)mem1,BLOCK_SIZE);
	munmap((void *)mem2,BLOCK_SIZE);
	hal_exit(comp_id);
}

void read_spi(void *arg, long period)
{
	int i;
	static int startup = 0;
        data_t *dat = (data_t *)arg;

	cmd01();

	  /* check for change in period */
        if (period != old_dtns) {
                old_dtns = period;
                dt = period * 0.000000001;
                recip_dt = 1.0 / dt;
        }
	
        /* check for scale change */
	 for (i = 0; i < NUMAXES; i++) {
                if (dat->scale[i] != old_scale[i]) {
                        old_scale[i] = dat->scale[i];
                        /* scale must not be 0 */
                        if ((dat->scale[i] < 1e-20) && (dat->scale[i] > -1e-20))
                                dat->scale[i] = 1.0;
                        scale_inv[i] = 1.0  / dat->scale[i];
                }
        }
	unsigned short gpi = getS16(rep_pos.io2);
	for (i = 0; i < NUMINPUTS; i++) {
		*(data->pin_input[i]) = gpi && 0x1;
		gpi = gpi >> 1;
	}

	for (i = 0; i < NUMAXES; i++) {
                /* the DDS uses 32 bit counter, this code converts
                   that counter into 64 bits */
		long pos = (signed long)getS32(rep_pos.pos[i]);
                accum_diff = pos - old_count[i];
                old_count[i] = pos;
                accum[i] += accum_diff;
                *(dat->position_fb[i]) = (float)(accum[i]) * scale_inv[i];
		*(dat->position_fbr[i]) = (signed long)getS32(rep_pos.pos[i]);
        }
	*(dat->ready)  = 1;

	return;
/*
	int i;
	static int startup = 0;
	data_t *dat = (data_t *)arg;

	read_buf();
	update_inputs(dat);

	txBuf[0] = CMD_CM2;
	update_outputs(dat);

	write_buf();

	if (period != old_dtns) {
		old_dtns = period;
		dt = period * 0.000000001;
		recip_dt = 1.0 / dt;
	}

	for (i = 0; i < NUMAXES; i++) {
		if (dat->scale[i] != old_scale[i]) {
			old_scale[i] = dat->scale[i];
			if ((dat->scale[i] < 1e-20) && (dat->scale[i] > -1e-20))
				dat->scale[i] = 1.0;
			scale_inv[i] = (1.0 / STEP_MASK) / dat->scale[i];
		}
	}

	read_buf();

	if (rxBuf[0] == (CMD_CM1 ^ ~0)) {
		*(dat->ready) = 1;
	} else {
		*(dat->ready) = 0;
		if (!startup)
			startup = 1;
		else
			*(dat->spi_fault) = 1;
	}

	for (i = 0; i < NUMAXES; i++) {
		accum_diff = get_position(i) - old_count[i];
		old_count[i] = get_position(i);
		accum[i] += accum_diff;

		*(dat->position_fb[i]) = (float)(accum[i]) * scale_inv[i];
	}*/
}

void write_spi(void *arg, long period)
{
	cmd01();
	return;
	write_buf();
}
long testx1;
void update(void *arg, long period)
{
	int i;
	data_t *dat = (data_t *)arg;
	double max_accl, vel_cmd, dv, new_vel,
	       dp, pos_cmd, curr_pos, match_accl, match_time, avg_v,
	       est_out, est_cmd, est_err;
	double tstep;
	short tsteps;
	for (i = 0; i < NUMAXES; i++) {
		/* set internal accel limit to its absolute max, which is
		   zero to full speed in one thread period */
		max_accl = max_vel * recip_dt;

		/* check for user specified accel limit parameter */
		if (dat->maxaccel[i] <= 0.0) {
			/* set to zero if negative */
			dat->maxaccel[i] = 0.0;
		} else {
			/* parameter is non-zero, compare to max_accl */
			if ((dat->maxaccel[i] * fabs(dat->scale[i])) > max_accl) {
				/* parameter is too high, lower it */
				dat->maxaccel[i] = max_accl / fabs(dat->scale[i]);
			} else {
				/* lower limit to match parameter */
				max_accl = dat->maxaccel[i] * fabs(dat->scale[i]);
			}
		}

		/* calculate position command in counts */
		pos_cmd = *(dat->position_cmd[i]) * dat->scale[i];
		/* calculate velocity command in counts/sec */
		vel_cmd = (pos_cmd - old_pos[i]) * recip_dt;
		old_pos[i] = pos_cmd;

		/* apply frequency limit */
		if (vel_cmd > max_vel) {
			vel_cmd = max_vel;
		} else if (vel_cmd < -max_vel) {
			vel_cmd = -max_vel;
		}

		/* determine which way we need to ramp to match velocity */
		if (vel_cmd > old_vel[i])
			match_accl = max_accl;
		else
			match_accl = -max_accl;

		/* determine how long the match would take */
		match_time = (vel_cmd - old_vel[i]) / match_accl;
		/* calc output position at the end of the match */
		avg_v = 0.5*(vel_cmd + old_vel[i]); //0.5
		curr_pos = (double)(accum[i]);
		est_out = curr_pos + avg_v * match_time;
		/* calculate the expected command position at that time */
		est_cmd = pos_cmd + vel_cmd * (match_time - 1.5 * dt);
		/* calculate error at that time */
		est_err = est_out - est_cmd;

		if (match_time < dt) {
			/* we can match velocity in one period */
			if (fabs(est_err) < 0.0001) {
				/* after match the position error will be acceptable */
				/* so we just do the velocity match */
				new_vel = vel_cmd;
			} else {
				/* try to correct position error */
				new_vel = vel_cmd - 0.5 * est_err * recip_dt;  //vel_cmd - 0.5 * est_err * recip_dt;
				/* apply accel limits */
				if (new_vel > (old_vel[i] + max_accl * dt)) {
					new_vel = old_vel[i] + max_accl * dt;
				} else if (new_vel < (old_vel[i] - max_accl * dt)) {
					new_vel = old_vel[i] - max_accl * dt;
				}
			}
		} else {
			/* calculate change in final position if we ramp in the
			opposite direction for one period */
			dv = -2.0 * match_accl * dt;  // 2.0
			dp = dv * match_time;
			/* decide which way to ramp */
			if (fabs(est_err + dp * 2.0) < fabs(est_err)) { // 2
				match_accl = -match_accl;
			}
			/* and do it */
			new_vel = old_vel[i] + match_accl * dt;
		}

		/* apply frequency limit */
		if (new_vel > max_vel) {
			new_vel = max_vel;
		} else if (new_vel < -max_vel) {
			new_vel = -max_vel;
		}

		old_vel[i] = new_vel;
		/* calculate new velocity cmd */
		long tstepl = 62500000/new_vel;
//		if (i==0)
//			printf("%f %i\n",new_vel,tstepl);
		if (tstepl < -32000)
			tsteps = -32000;
		else if (tstepl > 32000)
			tsteps = 32000;
		else tsteps = tstepl;
		if (abs(tstepl) > 64000)
			tsteps = 0;
		cmd_pos.pw[i] = getS16(tsteps); //    ((tsteps & 0xFF) << 8) | ((tsteps & 0xFF00) >> 8);
		*(dat->tstep[i]) = tsteps;
		//if (i==0)
		//	printf("%i %f\n",tsteps,new_vel);
		//BASEFREQ
		//update_velocity(i, (new_vel * VELSCALE));
	}
	unsigned short gpo = 0;
	for (i = NUMINPUTS; i > 0; i--) {
		gpo = (gpo <<1) |  *(dat->pin_input[i-1]) & 0x1;
	}
	cmd_pos.io1 = getS16(gpo);
	unsigned short enable = 0;
	for (i =  NUMAXES;i > 0; i--) {
		enable = (enable << 1) | *(dat->enable[i-1]) & 0x1;
	}
	cmd_pos.enable = enable;
	/* this is a command (>CM1) */
	//txBuf[0] = CMD_CM1;
	//cmd01();
}

void update_outputs(data_t *dat)
{
	float duty;
	int i;

	/* update pic32 output */
	txBuf[1] = (*(dat->pin_output[OUTPUT]) ? 1l : 0) << 0;

	for (i = 0; i < PWMCHANS; i++) {
		if (dat->pwm_enable[i]) { 
			/* update pwm */
			duty = *(dat->pwm_duty[i]) * dat->pwm_scale[i] * 0.01;
			if (duty < 0.0) duty = 0.0;
			if (duty > 1.0) duty = 1.0;

			txBuf[2+i] = (duty * (1.0 + pwm_period));
		} else { 
			/* simulate off/on using 0 or 100% duty cycle */
			txBuf[2+i] =  (*(dat->pin_output[i]) ?
						(1 + pwm_period) : 0);
		}
	}
}

static long debounce(long A)
{
	static long B = 0;
	static long C = 0;
	static long Z = 0;

	Z = (Z & (A | B | C)) | (A & B & C);
	C = B;
	B = A;

	return Z;
}

void update_inputs(data_t *dat)
{
	int i;
	long x;

	x = debounce(rxBuf[1]);

	for (i = 0; i < NUMINPUTS; i++) {
		*(dat->pin_input[i])  = (x & (0x1 << i)) ? 1 : 0;
	}
}

void rpi_read_buf()
{
	char *buf;
	int i;

	/* read buffer */
	buf = (char *)rxBuf;
	for (i=0; i<SPIBUFSIZE; i++) {
		*buf++ = BCM2835_SPIFIFO;
	}

}

void rpi_write_buf()
{
	char *buf;
	int i;

	/* activate transfer */
	BCM2835_SPICS = BCM_SPI_CS_TA | BCM_SPI_CS_CPHA;

	/* send txBuf */
	buf = (char *)txBuf;
	for (i=0; i<SPIBUFSIZE; i++) {
		BCM2835_SPIFIFO = *buf++;
	}

	/* wait until transfer is finished */
	while (!(BCM2835_SPICS & BCM_SPI_CS_DONE));

	/* deactivate transfer */
	BCM2835_SPICS = 0;

}

int map_gpio()
{
	int fd;
	static unsigned long mem1_base, mem2_base;

	switch (platform) {
	case RPI:
		mem1_base = BCM2835_GPIO_BASE;
		mem2_base = BCM2835_SPI_BASE;
		break;
	case RPI_2:
		mem1_base = BCM2835_GPIO_BASE + BCM2709_OFFSET;
		mem2_base = BCM2835_SPI_BASE + BCM2709_OFFSET;
		break;
	}

	fd = open("/dev/mem", O_RDWR | O_SYNC);
	if (fd < 0) {
		rtapi_print_msg(RTAPI_MSG_ERR,"%s: can't open /dev/mem \n",modname);
		return -1;
	}

	mem1 = mmap(
	        NULL,
	        BLOCK_SIZE,
	        PROT_READ|PROT_WRITE,
	        MAP_SHARED,
	        fd,
	        mem1_base);

	if (mem1 == MAP_FAILED) {
		rtapi_print_msg(RTAPI_MSG_ERR,"%s: can't map mem1\n",modname);
		close(fd);
		return -1;
	}

	mem2 = mmap(
	        NULL,
	        BLOCK_SIZE,
	        PROT_READ|PROT_WRITE,
	        MAP_SHARED,
	        fd,
	        mem2_base);

	close(fd);

	if (mem2 == MAP_FAILED) {
		rtapi_print_msg(RTAPI_MSG_ERR,"%s: can't map mem2\n",modname);
		return -1;
	}

	return 0;
}

/*    GPIO USAGE
 *
 *    RPI:
 *
 *	GPIO	Dir	Signal
 *
 *	8	OUT	CE0
 *	9	IN	MISO
 *	10	OUT	MOSI
 *	11	OUT	SCLK
 *
 */

void rpi_setup_gpio()
{
	unsigned long x;

	/* change SPI pins */
	x = BCM2835_GPFSEL0;
	x &= ~(0x3F000000);
	x |= 0x24000000;
	BCM2835_GPFSEL0 = x;

	x = BCM2835_GPFSEL1;
	x &= ~(0x0000003F);
	x |= 0x00000024;
	BCM2835_GPFSEL1 = x;

	/* set up SPI */
	BCM2835_SPICLK = BCM2835_SPICLKDIV;

	BCM2835_SPICS = 0;

	/* clear FIFOs */
	BCM2835_SPICS |= BCM_SPI_CS_CLEAR_RX | BCM_SPI_CS_CLEAR_TX;

}

void rpi_restore_gpio()
{
	unsigned long x;

	/* change SPI pins to inputs*/
	x = BCM2835_GPFSEL0;
	x &= ~(0x3F000000);
	BCM2835_GPFSEL0 = x;

	x = BCM2835_GPFSEL1;
	x &= ~(0x0000003F);
	BCM2835_GPFSEL1 = x;

}

unsigned long crc32(unsigned long crc, const void *buf, size_t size);
static void cmd01() {
	char *buf;
        int i;

        /* activate transfer */
        BCM2835_SPICS = BCM_SPI_CS_TA | BCM_SPI_CS_CPHA;

	unsigned short crc = (crc32(0x00,&cmd_pos,18) >>16) & 0xFFFF;
	cmd_pos.crc32 = getS16(crc);

	int okay = 0;
	int tries = 5;
	while (okay == 0 && tries > 0) {
		tries--;


        /* send txBuf */
        buf = (char *)&cmd_pos;
        for (i=0; i<sizeof(cmd_pos); i++) {
                BCM2835_SPIFIFO = *buf++;
	//	printf("%x",*(buf-1));
	}
	//printf("  ");

        /* wait until transfer is finished */
        while (!(BCM2835_SPICS & BCM_SPI_CS_DONE));
        /* deactivate transfer */
        BCM2835_SPICS = 0;

	        /* read buffer */
	        buf = (char *)&rep_pos;
	        for (i=0; i<sizeof(rep_pos); i++) {
	                *buf++ = BCM2835_SPIFIFO;
	//		printf("%x",*(buf-1));

	        }
		crc = (crc32(0x00,&rep_pos,24) >> 16) & 0xFFFF;
		unsigned short crcin = getS16(rep_pos.crc32);
		if (crcin != crc)
			printf("CRC IN ERROR %x %x\n",crc,crcin);
		else if (rep_pos.crcok != 0xFF)
			printf("CRC SEND ERROR");
		else okay = 1;
	}
	//printf("\n");

}





static unsigned long crc32_tab[] = {
	0x00000000, 0x77073096, 0xee0e612c, 0x990951ba, 0x076dc419, 0x706af48f,
	0xe963a535, 0x9e6495a3,	0x0edb8832, 0x79dcb8a4, 0xe0d5e91e, 0x97d2d988,
	0x09b64c2b, 0x7eb17cbd, 0xe7b82d07, 0x90bf1d91, 0x1db71064, 0x6ab020f2,
	0xf3b97148, 0x84be41de,	0x1adad47d, 0x6ddde4eb, 0xf4d4b551, 0x83d385c7,
	0x136c9856, 0x646ba8c0, 0xfd62f97a, 0x8a65c9ec,	0x14015c4f, 0x63066cd9,
	0xfa0f3d63, 0x8d080df5,	0x3b6e20c8, 0x4c69105e, 0xd56041e4, 0xa2677172,
	0x3c03e4d1, 0x4b04d447, 0xd20d85fd, 0xa50ab56b,	0x35b5a8fa, 0x42b2986c,
	0xdbbbc9d6, 0xacbcf940,	0x32d86ce3, 0x45df5c75, 0xdcd60dcf, 0xabd13d59,
	0x26d930ac, 0x51de003a, 0xc8d75180, 0xbfd06116, 0x21b4f4b5, 0x56b3c423,
	0xcfba9599, 0xb8bda50f, 0x2802b89e, 0x5f058808, 0xc60cd9b2, 0xb10be924,
	0x2f6f7c87, 0x58684c11, 0xc1611dab, 0xb6662d3d,	0x76dc4190, 0x01db7106,
	0x98d220bc, 0xefd5102a, 0x71b18589, 0x06b6b51f, 0x9fbfe4a5, 0xe8b8d433,
	0x7807c9a2, 0x0f00f934, 0x9609a88e, 0xe10e9818, 0x7f6a0dbb, 0x086d3d2d,
	0x91646c97, 0xe6635c01, 0x6b6b51f4, 0x1c6c6162, 0x856530d8, 0xf262004e,
	0x6c0695ed, 0x1b01a57b, 0x8208f4c1, 0xf50fc457, 0x65b0d9c6, 0x12b7e950,
	0x8bbeb8ea, 0xfcb9887c, 0x62dd1ddf, 0x15da2d49, 0x8cd37cf3, 0xfbd44c65,
	0x4db26158, 0x3ab551ce, 0xa3bc0074, 0xd4bb30e2, 0x4adfa541, 0x3dd895d7,
	0xa4d1c46d, 0xd3d6f4fb, 0x4369e96a, 0x346ed9fc, 0xad678846, 0xda60b8d0,
	0x44042d73, 0x33031de5, 0xaa0a4c5f, 0xdd0d7cc9, 0x5005713c, 0x270241aa,
	0xbe0b1010, 0xc90c2086, 0x5768b525, 0x206f85b3, 0xb966d409, 0xce61e49f,
	0x5edef90e, 0x29d9c998, 0xb0d09822, 0xc7d7a8b4, 0x59b33d17, 0x2eb40d81,
	0xb7bd5c3b, 0xc0ba6cad, 0xedb88320, 0x9abfb3b6, 0x03b6e20c, 0x74b1d29a,
	0xead54739, 0x9dd277af, 0x04db2615, 0x73dc1683, 0xe3630b12, 0x94643b84,
	0x0d6d6a3e, 0x7a6a5aa8, 0xe40ecf0b, 0x9309ff9d, 0x0a00ae27, 0x7d079eb1,
	0xf00f9344, 0x8708a3d2, 0x1e01f268, 0x6906c2fe, 0xf762575d, 0x806567cb,
	0x196c3671, 0x6e6b06e7, 0xfed41b76, 0x89d32be0, 0x10da7a5a, 0x67dd4acc,
	0xf9b9df6f, 0x8ebeeff9, 0x17b7be43, 0x60b08ed5, 0xd6d6a3e8, 0xa1d1937e,
	0x38d8c2c4, 0x4fdff252, 0xd1bb67f1, 0xa6bc5767, 0x3fb506dd, 0x48b2364b,
	0xd80d2bda, 0xaf0a1b4c, 0x36034af6, 0x41047a60, 0xdf60efc3, 0xa867df55,
	0x316e8eef, 0x4669be79, 0xcb61b38c, 0xbc66831a, 0x256fd2a0, 0x5268e236,
	0xcc0c7795, 0xbb0b4703, 0x220216b9, 0x5505262f, 0xc5ba3bbe, 0xb2bd0b28,
	0x2bb45a92, 0x5cb36a04, 0xc2d7ffa7, 0xb5d0cf31, 0x2cd99e8b, 0x5bdeae1d,
	0x9b64c2b0, 0xec63f226, 0x756aa39c, 0x026d930a, 0x9c0906a9, 0xeb0e363f,
	0x72076785, 0x05005713, 0x95bf4a82, 0xe2b87a14, 0x7bb12bae, 0x0cb61b38,
	0x92d28e9b, 0xe5d5be0d, 0x7cdcefb7, 0x0bdbdf21, 0x86d3d2d4, 0xf1d4e242,
	0x68ddb3f8, 0x1fda836e, 0x81be16cd, 0xf6b9265b, 0x6fb077e1, 0x18b74777,
	0x88085ae6, 0xff0f6a70, 0x66063bca, 0x11010b5c, 0x8f659eff, 0xf862ae69,
	0x616bffd3, 0x166ccf45, 0xa00ae278, 0xd70dd2ee, 0x4e048354, 0x3903b3c2,
	0xa7672661, 0xd06016f7, 0x4969474d, 0x3e6e77db, 0xaed16a4a, 0xd9d65adc,
	0x40df0b66, 0x37d83bf0, 0xa9bcae53, 0xdebb9ec5, 0x47b2cf7f, 0x30b5ffe9,
	0xbdbdf21c, 0xcabac28a, 0x53b39330, 0x24b4a3a6, 0xbad03605, 0xcdd70693,
	0x54de5729, 0x23d967bf, 0xb3667a2e, 0xc4614ab8, 0x5d681b02, 0x2a6f2b94,
	0xb40bbe37, 0xc30c8ea1, 0x5a05df1b, 0x2d02ef8d
};

unsigned long crc32(unsigned long crc, const void *buf, size_t size) {
	const char *p;

	p = buf;
	crc = crc ^ ~0U;

	while (size--)
		crc = crc32_tab[(crc ^ *p++) & 0xFF] ^ (crc >> 8);

	return crc ^ ~0U;
}


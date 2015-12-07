#!/usr/bin/python

import spidev
import RPi.GPIO as GPIO
import time
SPI = spidev.SpiDev()
SPI.open(0, 0)
SPI.mode = 0b11
SPI.max_speed_hz=5000000
import sys
import binascii

crcerrorcount = 0
crcerrorcountout = 0

def writeReg(reg,value):
        global crcerrorcount, crcerrorcountout
        okay = 0
        tries = 5
        while (okay != 1 and tries > 0):
                tries  = tries -1
                b0 = value & 0xff
                b1 = (value & 0xff00) >> 8
                b2 = (value & 0xff0000) >> 16
                b3 = (value & 0xff000000) >> 24
                send = [0x02,reg+0x80,b3,b2,b1,b0]
                crcout = (binascii.crc32("".join( chr( val ) for val in send[0:6])) >> 16) & 0xFFFF

                resp = SPI.xfer(send+[(crcout>>8)&0xFF,crcout&0xFF,0,0,0,0,0,0,0,0,0])

                val = (resp[10] << 24) + (resp[11] << 16) + (resp[12] << 8) + (resp[13])

                crcin = (resp[14] << 8) + resp[15]
                vals = "".join( chr( val ) for val in resp[0:14] )
                crcis =  (binascii.crc32(vals) >> 16) & 0xFFFF
                okay = 1
                if (crcin != crcis):
                        #print("CRC ERROR ON RECV")
                        #print("crcrep "+format(crcnn,'02x')+" vs "+format(crcis,'02x'))
                        crcerrorcount = crcerrorcount +1
                        okay = 1 #dont care here
                if (resp[16] != 0xFF):
                        #print("CRC SEND ERROR: "+format(resp[16],'02x'))
                        crcerrorcountout = crcerrorcountout +1
                        okay = 0
        if (okay == 0):
                print("ERROR WRITING!")
                return False
        return True
def readReg(reg):
        global crcerrorcount,crcerrorcountout
        tries = 5
        okay = 0
        while (okay != 1 and tries > 0):
                tries = tries -1
                send = [0x02,reg,0,0,0,0]
                crcout = (binascii.crc32("".join( chr( val ) for val in send[0:6])) >> 16) & 0xFFFF
                resp = SPI.xfer(send+[(crcout>>8)&0xFF,crcout&0xFF,0,0,0,0,0,0,0,0,0])
                val = (resp[10] << 24) + (resp[11] << 16) + (resp[12] << 8) + (resp[13])
                crcin = (resp[14] << 8) + resp[15]
                vals = "".join( chr( val ) for val in resp[0:14] )
                crcis =  (binascii.crc32(vals) >> 16) & 0xFFFF
                okay = 1
                if (crcin != crcis):
                        crcerrorcount = crcerrorcount +1
                        okay = 0
                        #print("CRC ERROR ON RECV")
                        #print("crcrep "+format(crcin,'02x')+" vs "+format(crcis,'02x'))
                if (resp[16] != 0xFF):
                        crcerrorcountout = crcerrorcountout +1
                        okay = 0
                        #print("CRC SEND ERROR: "+format(resp[16],'02x'))
                #print("reg "+str(reg)+" "+str(val))
        if (okay == 0):
                print("ERROR READING")

        return val
def setRegister(chip,reg,value):
        wr =  (chip & 0xff) + (((reg & 0xff) + 0x80) << 8)
        #print(format(wr,'02x'))
        writeReg(2,wr)
        writeReg(3,value)
        writeReg(1,0x02)
        time.sleep(0.0005)
        val = readReg(3)
        #print(val)
        return val

def toSigned(arr):
        res = 0
        for i in arr:
                if i < 0:
                        i = -i
                res = res << 8
                res = res + i
        if (arr[0] > 127):
                res = -res
        return res

def stepper(pw1,pw2,pw3,pw4):
        global crcerrorcount,crcerrorcountout
        pw1a = (pw1 & 0xFF00) >> 8
        pw1b = (pw1 & 0xFF)
        pw2a = (pw2 & 0xFF00) >> 8
        pw2b = (pw2 & 0xFF)
        pw3a = (pw3 & 0xFF00) >> 8
        pw3b = (pw3 & 0xFF)
        pw4a = (pw4 & 0xFF00) >> 8
        pw4b = (pw4 & 0xFF)
        #print(pw1a)
        #print(pw1b)
        send = [0x01,0xCA,pw1a,pw1b,pw2a,pw2b,pw3a,pw3b,pw4a,pw4b,0,0,0,0, 0xFF,0xFF,0,0]
        crcout = (binascii.crc32("".join( chr( val ) for val in send)) >> 16) & 0xFFFF

        tries = 5
        okay = 0
        while (tries > 0 and okay != 1):
                tries = tries -1
                resp = SPI.xfer(send+ [(crcout>>8)&0xFF,crcout&0xFF,0,0,0,0,0,0,0])
                crcin = (resp[24] << 8) + resp[25]
                vals = "".join( chr( val ) for val in resp[0:24] )
                crcis =  (binascii.crc32(vals) >> 16) & 0xFFFF
                okay = 1
                if (crcin != crcis):
                        crcerrorcount = crcerrorcount +1
                        okay = 0
                        #print("CRC ERROR ON RECV")
                        #print("crcrep "+format(crcin,'02x')+" vs "+format(crcis,'02x'))
                if (resp[26] != 0xFF):
                        crcerrorcountout = crcerrorcountout +1
                        okay = 0
                        #print("CRC SEND ERROR: "+format(resp[26],'02x'))
                if (okay == 1):
                        vals = "".join( format( val ,'02x') for val in resp )
                        print("test "+vals+ " "+format(crcis,'02x'))
                        p0 = toSigned(resp[2:6])
                        print(p0)

        if (okay == 0):
                print("ERROR STEPWIDTH")

stepper(0,0,0,0)
writeReg(0,0x00000403)
writeReg(5,0x00046F12)
writeReg(1,0x00000001)
#readReg(8)
#readReg(16)
#readReg(24)
time.sleep(0.1)

setRegister(0,0x00,0x00000004)
setRegister(0,0x6c,0x000100C5)
setRegister(0,0x6d,0x01000000)
setRegister(0,0x10,0x00061F01)
setRegister(0,0x11,0x0000000A)
setRegister(0,0x13,0x000001F4)
setRegister(0,0x14,0x00000100)
setRegister(0,0x15,0x00000100)
setRegister(0,0x70,0x000401C8)
setRegister(1,0x00,0x00000004)
setRegister(1,0x6c,0x000100C5)
setRegister(1,0x6d,0x01000000)
setRegister(1,0x10,0x00061001)
setRegister(1,0x11,0x0000000A)
setRegister(1,0x13,0x000001F4)
setRegister(1,0x14,0x00000100)
setRegister(1,0x15,0x00000100)
setRegister(1,0x70,0x000401C8)
setRegister(2,0x00,0x00000004)
setRegister(2,0x6c,0x000100C5)
setRegister(2,0x6d,0x01000000)
setRegister(2,0x10,0x00060A01)
setRegister(2,0x11,0x0000000A)
setRegister(2,0x13,0x000001F4)
setRegister(2,0x14,0x00000100)
setRegister(2,0x15,0x00000100)
setRegister(2,0x70,0x000401C8)


t = int(sys.argv[1])
if (t>0):
        i = 5000
        x = 1
        t2 = t
else:
        i = 5000
        x = -1
        t2 = -t
if (t != 0):
        while (i-100 > t2):
                stepper(i*x,i*x,0,0)
                #writeReg(1,0x00000001)
                time.sleep(0.001)
                #readReg(17)
                #       print(i)
                i = i -100
stepper(t,t,0,0)
sys.exit()

while True:
        print("CRC IN:"+str(crcerrorcount))
        print("CRC OUT:"+str(crcerrorcountout))
        for x in range(0,1000):
                stepper(t,t,t/4,0)


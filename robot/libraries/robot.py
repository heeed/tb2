#robot motion library 
#
#Library for the motor control of the robot


import smbus,sys,termios,tty
import time
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(18, GPIO.OUT)
GPIO.output(18,1)


bus = smbus.SMBus(1)

DEVICE = 0x20
IODIRA = 0x00
OLATA  = 0x14
GPIOA  = 0x12

class Robot():

    robotType = '' 
    direction = {
	"forward": 0b01100110,
	"backwards": 0b10011001,
	"left": 0b10010110,
	"right": 0b01101001
	}

    def __init__(self, robotType, robotName):
        self.robotType = robotType
        self.robotName = robotName

        if self.robotType == 'sts':
            self.motorA1 = 19
            self.motorA2 = 20
            self.motorB1 = 21
            self.motorB2 = 26

            self.motorA = Motor(self.motorA1,self.motorA2)
            self.motorB = Motor(self.motorB1,self.motorB2)
        elif self.robotType == 'tb2':
            print("tb2 setup")
            bus.write_byte_data(DEVICE,IODIRA,0x00)
            bus.write_byte_data(DEVICE,OLATA,0)


    def forward(self):
        if self.robotType == 'sts':
            self.motorA.forward()
            self.motorB.forward()
            print("Forward")
        elif self.robotType == 'tb2':
            bus.write_byte_data(DEVICE,OLATA,self.direction["forward"])
    
    def backwards(self):
        if self.robotType == 'sts':
            self.motorA.backward()
            self.motorB.backward()
            print("backward")
        elif self.robotType == 'tb2':
            bus.write_byte_data(DEVICE,OLATA,self.direction["backwards"])

    def left(self):
        if self.robotType == 'sts':
            self.motorA.forward()
            self.motorB.backward()
            print("left")
        elif self.robotType == 'tb2':
            bus.write_byte_data(DEVICE,OLATA,self.direction["left"])
    
    def right(self):
        if self.robotType == 'sts':
            self.motorA.backward()
            self.motorB.forward()
            print('right')
        elif self.robotType == 'tb2':
            bus.write_byte_data(DEVICE,OLATA,self.direction["right"])

    def stop(self):
        if self.robotType == 'sts':
            self.motorA.stop()
            self.motorB.stop()
            print('stop')
        elif self.robotType == 'tb2':
            bus.write_byte_data(DEVICE,OLATA,0b00000000)

    def readchar(self):
    	fd = sys.stdin.fileno()
    	old_settings = termios.tcgetattr(fd)
    	try:
        	tty.setraw(sys.stdin.fileno())
        	ch = sys.stdin.read(1)
    	finally:
        	termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    	if ch == '0x03':
        	raise KeyboardInterrupt
    	return ch

    def readkey(self):
    	getchar = self.readchar()
    	c1 = getchar
    	if ord(c1) != 0x1b:
        	return c1
    	c2 = getchar
    	if ord(c2) != 0x5b:
        	return c1
    	c3 = getchar()
    	return chr(0x10 + ord(c3) - 65)  # 16=Up, 17=Down, 18=Right, 19=Left arrows


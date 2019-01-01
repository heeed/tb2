#robot motion library 
#
#Library for the motor control of the robot

from gpiozero import Motor
import sys,tty,termios

class Robot():

    robotType = '' 

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

    def forward(self):
        if self.robotType == 'sts':
            self.motorA.forward()
            self.motorB.forward()
            print("Forward")

    def backwards(self):
        if self.robotType == 'sts':
            self.motorA.backward()
            self.motorB.backward()
            print("backward")

    def left(self):
        if self.robotType == 'sts':
            self.motorA.forward()
            self.motorB.backward()
            print("left")

    def right(self):
        if self.robotType == 'sts':
            self.motorA.backward()
            self.motorB.forward()
            print('right')

    def stop(self):
        if self.robotType == 'sts':
            self.motorA.stop()
            self.motorB.stop()
            print('stop')
    
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


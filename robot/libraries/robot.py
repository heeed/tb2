#robot motion library 
#
#Library for the motor control of the robot

from gpiozero import Motor

class robot():

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


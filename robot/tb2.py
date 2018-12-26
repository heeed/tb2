#testRobot.py
#
#Test script for robot. 
#
#Moves forwards/back/left/right

from libraries.robot import robot as robot
from time import sleep


brian = robot("sts","brian")
print(brian.robotType)
print(brian.robotName)

#while True:
    
brian.forward()
sleep(1)
brian.backwards()
sleep(1)
brian.left()
sleep(1)
brian.right()
sleep(1)
brian.stop()

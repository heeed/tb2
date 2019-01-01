#RobotDrive.py
#
#script to move robot about. 
#
#Moves forwards/back/left/right using w,a,s,d and also x to stop.

from libraries.robot import Robot as robot
from time import sleep
import sys

brian = robot("sts","brian")
print(brian.robotType)
print(brian.robotName)

while True:
    try:
        keyp=brian.readkey()
        if keyp == 'w' or ord(keyp) == 16:
            brian.forward()
            #print('Forward', )
        elif keyp == 's' or ord(keyp) == 18:
            brian.backwards()
            #print('Reverse', )
        elif keyp == 'd' or ord(keyp) == 100:
            brian.right()
            #print('Spin Right', )
        elif keyp == 'a' or ord(keyp) == 19:
            brian.left()
        elif keyp == 'x' or ord(keyp) == 120:
            brian.stop()
        print(keyp)
        sleep(0.1)
    except KeyboardInterrupt:
    #    pass
    #finally:
        print("Quiting and closing down")
        #brian.stop()
        #sys.exit()

#robot.py
#
#simple script to display range in mm

from libraries.ranger import ranger as ranger
from time import sleep

ranging = ranger()

ranging.test()
ranging.startRanging(1)
while True:
    print(ranging.getDistance())
ranging.stopRanging()

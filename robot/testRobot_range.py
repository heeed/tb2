#robot.py
#
#simple script to display range in mm

from libraries.ranger import ranger as ranger
from time import sleep

ranging = ranger()

ranging.test()
ranging.startRanging(1)

while True:
    try:
        print(ranging.getDistance())
    except KeyboardInterrupt:
        print("Stopping ranging")
        ranging.stopRanging()

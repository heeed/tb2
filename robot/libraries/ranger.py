import VL53L1X

i2c_bus = 1
i2c_address = 0x29

class ranger():
    def __init__(self):
        self.tof = VL53L1X.VL53L1X(i2c_bus,i2c_address)
        self.tof.open()
    
    def test(self):
        print("hello")

    def startRanging(self,focus):
        self.tof.start_ranging(focus)

    def stopRanging(self):
        self.tof.stop_ranging()

    def getDistance(self):
        return self.tof.get_distance()


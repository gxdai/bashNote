class Celsius(object):
    def __init__(self, temperature=0.):
        self.temperature=temperature

    def to_fahrenheit(self):
        return (self.temperature*1.8) + 32

    def get_temperature(self):
        print("Getting value")
        return self._temperature

    def set_temperature(self, value):
        if value < -273:
            raise ValueError("Temperature below -273 is not possible")
        print("setting value")
        self._temperature = value

    temperature = property(get_temperature, set_temperature)

print("==========================")
c = Celsius()

print("==========================")

print(c.temperature)

print("==========================")
c.temperature = 37


"""
property(fget=None, fset=None, fdel=None, doc=None)
"""


c.to_fahrenheit()

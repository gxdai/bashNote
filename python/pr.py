class SomeClass(object):
    @property
    def x(self):
        return 5

    def y(self):
        return 6

var = SomeClass()
print(var.x)
print(var.y)

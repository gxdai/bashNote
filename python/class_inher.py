class A(object):
    def __init__(self, val):
        self.val = val
        self.__value = 'dobule underline'
        print(self.__class__)
    def get_val(self, val):
        return val + 'here'
    def __get_val_plus(self, string):
        return string
class B(A):   # inherent every method from A, including initialization.
    pass

class C(A):
    def __init__(self, val):
        self.val = val
        # super(C, self).__init__(2)
        super(self.__class__, self).__init__(2)

    def get_val(self, val):
        return val + 'there'
print(A)
print(dir(A))
a = A(2)
print(a._A__get_val_plus("Hello world"))
print(a._A__value)
print(a)
print(a.__class__)
print(a.val)
b = B(3)
print(b.val)
c = C(4)
print(c.val)
print(c.get_val('hi '))

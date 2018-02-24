# Learn python functions

## examples for namedtuple
'''
import collections

Person = collections.namedtuple('Person', 'name age gender')

bob = Person(name='Bob', age=30, gender='male')

print '\nRepresentation:', bob

jame = Person(name='jane', age=29, gender='female')
print '\nField by name:', jane.name

print '\nField by index: '
for p in [bob, jane]:
    print '%s is a %d year old %s' % p

'''




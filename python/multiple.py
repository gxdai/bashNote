import sys


try:
    f = open('myfile.txt', 'r')
    s = f.readline()
    i = int(s.strip())
except IOError as err:
    print("OS errorrrrrrrrr: {0}".format(err))
    print("can not open: {0}".format(err))
except ValueError:
    print("Could not convert data to an integer")
except:
    print("Unexcepted error:", sys.exc_info()[0])
    raise
print("END")

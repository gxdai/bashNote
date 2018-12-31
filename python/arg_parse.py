import argparse

parser = argparse.ArgumentParser()

parser.add_argument('-a', action='store_true', default=False)
parser.add_argument('-b', action='store', dest='b')
parser.add_argument('-c', action='store', dest='c', type=int)
parser.add_argument('--noarg', action='store_true', default=False)

print(parser.parse_args(['-a', '-bval', '-c', '3', '--noarg']))

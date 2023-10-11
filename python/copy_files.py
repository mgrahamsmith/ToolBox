################################################################################
##
## Copy files recursively from one directory to another.  If the directory 
## specified to be copied to does not exist, it will be created.  All failed
## copy operations will be reported in a text file containing the list of files 
## that failed to be copied.
##
################################################################################

import argparse

parser = argparse.ArgumentParser(description='Copy files from one directory to another.')
parser.add_argument('integers', metavar='N', type=int, nargs='+',
                    help='an integer for the accumulator')
parser.add_argument('--sum', dest='accumulate', action='store_const',
                    const=sum, default=max,
                    help='sum the integers (default: find the max)')

args = parser.parse_args()
print(args.accumulate(args.integers))
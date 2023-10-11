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
parser.add_argument("-s", "--source", help="The directory to be copied from.")
parser.add_argument("-d", "--dest", help="The directory to be copied to.")
args = parser.parse_args()

print(f"Source directory: {args.src}" )
print(f"Destination: {args.dest}" )


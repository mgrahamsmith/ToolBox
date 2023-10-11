################################################################################
##
## Copy files recursively from one directory to another.  If the directory 
## specified to be copied to does not exist, it will be created.  All failed
## copy operations will be reported in a text file containing the list of files 
## that failed to be copied.
##
################################################################################

import argparse
from shutil import copytree, ignore_patterns


parser = argparse.ArgumentParser(description='Copy files from one directory to another.')
parser.add_argument("src", help="The directory to be copied from.")
parser.add_argument("dest", help="The directory to be copied to.")
args = parser.parse_args()

print(f"Source directory: {args.src}" )
print(f"Destination: {args.dest}" )

# With dirs_exist_ok set to True, the copying operation will continue if it
# encounters existing directories, and files within the dest tree will be
# overwritten by corresponding files from the src tree.
copytree(args.src, args.dest, ignore=ignore_patterns('*.pyc', 'tmp*'),
    dirs_exist_ok = True
    )

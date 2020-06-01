#! /bin/bash

# 1. 

echo $1 $2 $3 '> echo $1 $2 $3'

# /pass_arguments.sh to sd ad                                                          
# to sd ad > echo $1 $2 $3

# 2.

echo $0 $1 $2 $3 '> echo $1 $2 $3'

# ./pass_arguments.sh to sd ad   
# ./pass_arguments.sh to sd ad > echo $1 $2 $3

# As you can see here we're getting the 0th index with ./pass_arguments.sh
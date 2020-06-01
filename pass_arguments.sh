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

# 3.

# We can pass the result into array. Let's see that

args = ("$@")

# This $@ stores your argument as an array. So to pass them you need to declare
# a variable then you assign those argument which are stored in $@ 

echo ${args[0]} ${args[1]} ${args[2]}

# We can return all the value by just this also. Above echo is for reading arguments
# by there index
echo $@
# cat /etc/shells  
# which bash
#  ls -al
# chmod +x file_name :- Change the permission to execute the file

#! /bin/bash
echo "Hello World"

# variables are of two type
# 1. System Variable:- It generally start with capital word
# 2. User Variable:- variable which is used locally

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD

# This variables are by default present in linux.

# User variable are defined like this and you can use that variable using $.
name=Siddhant
echo The name is $name


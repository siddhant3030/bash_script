#! /bin/bash

# -e will enable the interpreter for the \c otherwise it will directly print the \c
echo -e "Enter name of the file : \c"
read file_name

if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi
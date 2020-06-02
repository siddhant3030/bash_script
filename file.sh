#! /bin/bash

# -e will enable the interpreter for the \c otherwise it will directly print the \c
echo -e "Enter name of the file : \c"
read file_name

# -d to check the directory
if [ -e $file_name ]
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

# Shell Script has many operators that you can use to test different aspects of a file.
#  For example, you can use the -e operator to ensure that a file exists before deleting it.
#   Or, you can check that a file can be written to before appending to it.
#    By checking the feasibility of the impending file operation,
#     you can reduce the number of errors that your program will encounter.
#! /bin/bash

echo -e "Enter the name of the file : \c"
read file_name

# >> means to append
# > means to overwite the file


if [ -f $file_name ]
then
    if [ -w $file_name ]
    then
        echo "Type some text. To quit press ctrl+d"
        cat >>
    else

    fi
else
    echo "$file_name not found"
fi
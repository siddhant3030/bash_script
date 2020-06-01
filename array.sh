# This will be mostly foucus on reading the array
#! /bin/bash

echo "Enter names: "
read -a names
echo "Names: ${names[0]}, ${names[1]}"



# If we don't put any variable in front of read commands then it goes to 
# inbuilt variable $REPLY

echo "Enter names: "
read 
echo "Names: $REPLY"

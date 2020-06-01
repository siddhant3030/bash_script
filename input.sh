#! /bin/bash

# Read user input from the command
echo "enter name: "
read name
echo "entered name: $name"

# Result
# enter name: 
# siddhant
# entered name: siddhant

# Reading Multiple Input
echo "enter names: "
read name1 name2 name3
echo "Names: $name1, $name2, $name3"

# Print the username on the same line
read -p 'username: ' user_var # -p is a flag here 
echo "username: $user_var"

# Example
# username: sid
# username: sid
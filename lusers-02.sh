#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is root user or not

# Display the UID of user
echo "Your UID is ${UID}" #UID is the exisiting variable in Shell  builtin

# Display username of the user using above UID
#USERNAME=$(id -un) this is also a correct command however I used whoami which is also a valid command.
USERNAME=$(whoami) #we can use any command following by $(), command should be specified in the brackets.
#USER_NAME=`id-un` this command is the old syntax 
echo "Your username is ${USERNAME}"

# Display if the user is root user or not
#if [[ ${UID} -eq 0 ]] this was taught in the class
if [[ ${UID} = 0 ]] # this is my improvised version and more suitable one
then
  echo 'You are a root user'
else
  echo 'You are not a root user'
fi  # fi is used to finish the script

# This is the end of script
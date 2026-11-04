#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is root user or not

# Display the UID of user
echo "Your UID is ${UID}"

# Display username of the user using above UID
#USERNAME=$(id -un)
USERNAME=$(whoami)
#USER_NAME=`id-un` this command is the old syntax 
echo "Your username is ${USERNAME}"

# Display if the user is root user or not
#if [[ ${UID} -eq 0 ]] this was taught in the class
if [[ ${UID} = 0 ]] # this is my improvised version and more suitable one
then
  echo 'You are a root user'
else
  echo 'You are not a root user'
fi  

# This is the end of script
#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is root user or not

# Display the UID of user
echo "${UID}"

# Display username of the user using above UID
USERNAME=$(id -un)
#USER_NAME=`id-un` this command is the old syntax 
echo "Your username is ${USERNAME}"

# Display if the user is root user or not
if [[ ${UID} -eq 0 ]]
then
  echo 'You are a root user'
else
  echo 'You are not a root user'
fi  
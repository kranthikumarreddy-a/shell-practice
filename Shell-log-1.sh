#!/bin/bash

 USER_ID=$(id -u)
 SERVICE="$@"

if [ $USER_ID -ne 0 ]; then
echo "Please run this as a  root user"
else
echo "Running the script"
fi

for i in "$@"
do
echo "Installing the : $SERVICE"
dnf install $SERVICE -y
echo "$SERVICE installed"
done
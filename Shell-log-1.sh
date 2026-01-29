#!/bin/bash

 USER_ID=$(id -u)

FOLDER_NAME="/var/lib/shell-practice"
FILE_NAME="/var/lib/shell-practice/$0.log"


VALIDATE() {
if [ $1 -ne 0 ]; then
echo "Please run this as a  root user"
else
echo "Installing nginx"
fi
}
VALIDATE $? "installing nginx"
if [ $2 -ne 0 ]; then
echo "Installing nginx is scuccess"
else
echo "Calling is failed"
fi
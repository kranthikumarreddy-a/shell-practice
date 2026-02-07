#!/bin/bash
LOGs_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
 USER_ID=$(id -u)

 mkdir -p $LOGs_FOLDER

if [ $USER_ID -ne 0 ]; then
echo "Please run this as a  root user" | tee -a $LOGS_FILE
else
echo "Running the script" | tee -a $LOGS_FILE
fi

for SERVICE in "$@" 
do
echo "Installing the : $SERVICE" | tee -a $LOGS_FILE
dnf install $SERVICE -y   &>> $LOGS_FILE
echo "$SERVICE installed" | tee -a $LOGS_FILE
done
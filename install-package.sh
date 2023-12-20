#!bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -ne 0 ]
then 
    echo -e "$R Error: please use root $N"
else
    echo "yau are in root"
fi

echo "all arguments passed: $@"
#!bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started exicuted at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [$1 -ne 0]
    then
        echo -e "$2...$R failed $N"
    else 
        echo -e "$2...$G success $N"
    fi

}

if [ $ID -ne 0 ]
then 
    echo -e "$R Error: please use root $N"
    exit 1
else
    echo "yau are in root"
fi

# echo "all arguments passed: $@"

for package in $@

do
    yum list installed $package &>> $LOGFILE#check installed or not
    if [ $? -ne 0 ] # if not installed
    then
        yum install $package -y &>> $LOGFILE#install the package
        VALIDATE $? " installation of $package"
    else 
        echo -e " $package is alraedy installed $Y skipped $N"
    fi
done
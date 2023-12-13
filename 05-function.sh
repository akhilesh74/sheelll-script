#!/bin/bash

ID=$(id -u)

VALIDATE (){
    if [$1 -ne 0]
    then 
        echo " $2 is failed"
        exit 1
    else 
        echo "$2 is successfully"
    fi

}
if [ $ID -ne 0 ]
then 
    echo "Error: please use root "
else
    echo "yau are in root"
fi

yum install mysql -y 

VALIDATE $? "installing mysql"

yum install git -y

VALIDATE $? "installing git"
#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error: please use root "
else
    echo "yau are in root"
fi

yum install mysql -y 

if [$? -ne 0]
then 
    echo " mysql  installation is failed"
    exit 1
else 
    echo "mysql is installed successfully"
fi

yum install git -y
 

if [$? -ne 0]
then 
    echo " git  installation is failed"
    exit 1
else 
    echo "git successfully installed"
fi
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
    echo " not installed"
    exit 1
else 
    echo "success"
fi
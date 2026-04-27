#!/bin/bash

usage=$(df -h / | grep / | awk '{print $5}' | sed 's/%//g')
(df -h / | grep / | awk '{print $5}' | sed 's/%//g')


if [[ $usage -gt 90  ]]
then
	echo "aapka disk full hai"

elif [[ $usage -gt 50 ]]
then 
	echo "aapka disk 50% se uper hai"

elif [[ $usage == 90 ]]
then
	echo "aapka storage 90% full hai"

else
	echo "aapka storage 50% se niche hai"

fi


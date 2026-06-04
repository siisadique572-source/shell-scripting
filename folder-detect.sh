#!/bin/bash

# ab hum ek folder detecor banayenge

read -p "ENTER YOUR FOLDER PATH: " folder_path

if [[ -d $folder_path ]]
then
	echo "aapki zip file ready hogyi"
	tar -czf "${folder_path}.tar.gz" "$folder_path"

else
	"ERRO!!!!! aapki '$foler_path  ' ye path galath hai "

fi

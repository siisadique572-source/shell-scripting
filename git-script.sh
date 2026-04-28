#!/bin/bash

# phle hum git banayenge

read -p "ENTER YOUR ORIGIN: " originn
read -sp "yhn apna token dalo: " token
read -p "ENTER YOUR COMMIT: " committ
read -p "ENTER YOUR URL: " your_url
echo "1: select all files\n2: select files"
read -p "choose your option: " choose
read -p "ENTER YOUR FILES: " files_name

if [ $choose -eq 1 ]
then
	echo "your all files added"
	git init
	git add.
	git commit -m "$committ"

fi

if [ $choose -eq 2 ]
then
	git init
	git add "$files_name"
	git commit -m "$committ"


else
	echo "aapki files nhi mili"

fi

git remote remove origin 2>/dev/null

git remote add origin https://$token@$your_url
git push -f origin $originn

#!/bin/bash

# phle hum git banayenge

read -p "yhn apna token dalo" token

git init

git status

git add .

git commit -m "First commit"

git remote add set-url https://$token@https://github.com/siisadique572-source/shell-scripting.git

git push -f origin master

#!/bin/bash

#main
echo usuario:
read name
echo email:
read email
git config --global user.name $name
git config --global user.email $email
figlet "nuevo usuario de git creado" |lolcat
git config --list |lolcat




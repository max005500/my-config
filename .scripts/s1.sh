#!/bin/bash

# main
 
echo "escribe un mensaje"

read m

git commit -am "$m"
 
figlet 'commit terminado' |cowsay -f eyes -n |lolcat

#!/bin/bash

figlet 'nuevo proyecto' |lolcat
echo ingrese nombre de proyecto:
read name
mkdir $name
cd $name

npm init -y
git init
clear
touch .gitignore

figlet 'seleccione tipo de proyecto' |lolcat 
echo 1-html,css,js,assets  
echo 2-html,css,assets  
echo 3-html,css
echo 4-html,js
echo 5-js
echo ingrese opcion: 
read VAR

case "$VAR" in
  1) 
    mkdir src
    cd src
    touch index.html
    touch main.js
    mkdir scripts
    mkdir assets
    mkdir css
    cd css
    touch styles.css
    cd ..
    cd ..
    figlet 'entorno creado' |cowsay -f eyes -n| lolcat 
    ;;
  2) 
    mkdir src
    cd src
    touch index.html
    mkdir assets
    mkdir css
    cd css
    touch styles.css
    cd ..
    cd ..
    figlet 'entorno creado' |cowsay -f eyes -n| lolcat 
    ;;
  3)
    mkdir src
    cd src
    touch index.html
    mkdir css
    cd css
    touch styles.css
    cd ..
    cd ..
    figlet 'entorno creado' |cowsay -f eyes -n| lolcat 
    ;;
  4)
    mkdir src
    cd src
    touch index.html
    touch main.js
    mkdir scripts
    cd ..
    cd ..
    figlet 'entorno creado' |cowsay -f eyes -n| lolcat 
    ;;
  5)
    mk src
    cd src 
    touch index.js
    cd ..
    cd ..
    figlet 'entorno creado' |cowsay -f eyes -n| lolcat 
    ;;
  *) 
    figlet 'no existe esa configuracion' |cowsay -f dragon -n| lolcat 
    ;;
esac



#!/bin/bash

echo nombre del paquete: | lolcat
read name 
echo version del paquete: |lolcat
read version

npm i $name@$version 

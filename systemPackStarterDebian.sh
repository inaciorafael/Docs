#!bin/bash

echo "Instalando programas e recursos de forma rápida e fácil..."
sleep 2 

echo "Programas: snapd, inkscape, spotify, Visual Studio Code, discord, reatroarch, etc... "

sudo apt update 
sudo apt upgrade 

sudo apt install snapd inkscape gparted vlc vim python-pip deluge   

sudo pip install spotdl

sudo snap install code --classic
sudo snap install spotify 
sudo snap install discord 
sudo snap install retroarch 
 

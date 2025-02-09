#!/bin/bash

#SETUP FOR KALI LINUX ~
echo -e "\e[33mSETUP FOR KALI LINUX ~\e[0m";
apt update -y && apt upgrade -y;

#ZSH
cp .zshrc ~

#DIRECTORIES
mkdir /home/kali/tools;
mkdir /home/kali/HTB;

#TOOLS
#neovim
apt install neovim -y;

#xclip
apt install xclip -y;

#batcat
apt install bat -y;

#gobuster
apt install gobuster -y;

#SecLists
mdkir /home/kali/tools/seclists;
git clone https://github.com/danielmiessler/SecLists.git /home/kali/tools/seclists;

#Kerbrute
mkdir /home/kali/tools/kerbrute;
git clone https://github.com/ropnop/kerbrute.git /home/kali/tools/kerbrute;
apt install golang-go -y;
cd /home/kali/tools/kerbrute;
go build -ldflags "-s -w" .;
cd;

#Ghidra
#apt install ghidra;

#APPS
#Visual Studio Code
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64';
dpkg -i code.deb;
rm code.deb;

#Protonvpn
#wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.4_all.deb;
#sudo dpkg -i ./protonvpn-stable-release_1.0.4_all.deb && sudo apt update;
#sudo apt install proton-vpn-gnome-desktop;
#rm protonvpn-stable-release_1.0.4_all.deb;

echo -e "\e[31mSETUP FINISHED!! ENJOY ;)\e[0m";


#!/bin/bash
sudo pacman -Syu base-devel \
git \
xorg-server \
xorg-xinit \
libx11 libxinerama \
libxft \
webkit2gtk \
alacritty \
picom \
ttf-anonymous-pro \
feh

cd ~ 
git clone https://github.com/CJendantix/dwm.git 
git clone https://git.suckless.org/dmenu 
cd dmenu 
sudo make clean install
cd ~/dwm 
sudo make clean install 
mkdir ~/.config 
mkdir ~/.config/alacritty 
cp ./linux-conf/alacritty.yml ~/.config/alacritty/ 
mkdir ~/.config/picom 
cp ./linux-conf/picom.conf ~/.config/picom/ 
cat ./linux-conf/.bash_profile >> ~/.bash_profile 
cat ./linux-conf/.xinitrc >> ~/.xinitrc 
mkdir ~/backgrounds 
cp ./linux-conf/wallpaper.jpg ~/backgrounds/wallpaper.jpg 
reboot

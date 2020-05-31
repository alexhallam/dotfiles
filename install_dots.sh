#!/bin/sh
# License: GNU GPLv3
stow bashrc nvim tmux mpd ncmpcpp xsession bashrc 

sudo apt-get install neovim tmux mpd ncmpcpp make build-essential libx11-dev libxft-dev libxinerama-dev xorg-dev sxhkd mpv pavucontrol

git clone https://git.suckless.org/dwm

cd dwm && sudo make install clean

git clone https://git.suckless.org/st

cd st && sudo make install clean

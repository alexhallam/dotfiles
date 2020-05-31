#!/bin/sh
# License: GNU GPLv3
stow bashrc nvim tmux mpd ncmpcpp xsession bashrc 

sudo apt-get install curl neovim tmux mpd ncmpcpp make build-essential libx11-dev libxft-dev libxinerama-dev xorg-dev sxhkd mpv pavucontrol

sudo apt-get --no-install-recommends install xserver-xorg xserver-xorg-video-fbdev xinit pciutils xinput xfonts-100dpi xfonts-75dpi xfonts-scalable

git clone https://git.suckless.org/dwm

cd dwm && sudo make install clean

cd ..

git clone https://git.suckless.org/st

cd st && sudo make install clean

cd ..

git clone https://git.suckless.org/dmenu

cd dmenu && sudo make install clean


# vimplug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# brave
sudo apt install apt-transport-https curl

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

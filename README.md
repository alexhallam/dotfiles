# dotfiles for a minimal suckless build on Debian 10

The main suckless tools used are `st` and `dwm`. 

![screenshots](screenshots/pic.png)

### Instructions

```
sudo apt install  git stow

git clone

cd dotfiles

stow bashrc nvim tmux mpd ncmpcpp xsession bashrc 

sudo apt-get install neovim tmux mpd ncmpcpp make build-essential libx11-dev libxft-dev libxinerama-dev xorg-dev sxhkd mpv pavucontrol

git clone https://git.suckless.org/dwm

cd dwm && sudo make install clean

git clone https://git.suckless.org/st

cd st && sudo make install clean

clone my st and dwm builds
```


# Other things to do when setting up a new OS

#### Neovim

- [ ] `sudo apt-get install neovim` https://github.com/neovim/neovim/wiki/Installing-Neovim

#### vim-plug

- [ ] vim-plug https://github.com/junegunn/vim-plug  `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

### sxhd (simple x hotkey deamon)

```
sudo apt-get install sxhkd
```

### mpv

```
sudo apt-get install mpv
```

#### Brave Browser
```
curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
 
sudo sh -c 'echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com `lsb_release -sc` main" >> //etc/apt/sources.list.d/brave.list
 
sudo apt update
 
 sudo apt install brave-browser brave-keyring
```

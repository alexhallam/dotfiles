# dotfiles for a minimal suckless build on Debian 10

The main suckless tools used are `st`, `dmenu` and `dwm`. 

![screenshots](screenshots/pic.png)

### Instructions

```
sudo apt install  git stow

git clone https://github.com/alexhallam/dotfiles.git

cd dotfiles

sh install_dots.sh
```

#### Brave Browser
```
https://brave-browser.readthedocs.io/en/latest/installing-brave.html#linux
```
### WiFi

Information on drivers for wifi cards is on the Debian page https://wiki.debian.org/iwlwifi

WiFi Cards must have non-free software drivers. non-free must be added to `/etc/apt/source.list`. Details here https://wiki.debian.org/SourcesList

```
# add non-free to apt sources
# install library
sudo apt-get install firmware-iwlwifi
# install driver
sudo modprobe -r iwlwifi ; sudo modprobe iwlwifi
# really good cli for easy searching on turning internet on
wicd-curses
```


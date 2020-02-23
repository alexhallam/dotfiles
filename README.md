# dotfiles for a minimal suckless build on Debian 10

The main suckless tools used are `st` and `dwm`. 

![screenshots](screenshots/pic.png)

### Instructions

```
git clone

mv debian10_suckless dotfiles

cd dotfiles

stow bashrc nvim tmux mpd ncmpcpp xsession bashrc 

sudo apt-get install neovim tmux mpd ncmpcpp make cc libx11-dev libxft-dev libxinerama-dev

git clone https://git.suckless.org/dwm

cd dwm && sudo make install clean

git clone https://git.suckless.org/st

cd st && sudo make install clean

clone my st and dwm builds
```


# Other things to do when setting up a new OS

- [ ] `sudo apt-get install neovim` https://github.com/neovim/neovim/wiki/Installing-Neovim

- [ ] vim-plug https://github.com/junegunn/vim-plug  `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

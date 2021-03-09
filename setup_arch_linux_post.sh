#!/bin/bash



sudo pacman -S wget curl git 
sudo pacman -S sway dmenu alacritty xorg-server-xwayland


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash 
source $HOME/.nvm/nvm.sh
nvm install --lts 
nvm install 10 
nvm install 12
nvm alias default 12


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

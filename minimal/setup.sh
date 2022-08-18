#!/usr/bin/env bash

# simpler setup
# removes a lot of the _nice to haves_ from brew 
# adds in a basic usable mac os x system 

set -euxo pipefail

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# uses the accompanying ~/Brewfile
brew bundle install

# ZSH Setup
echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc
echo "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc

# Languages support
echo "export PATH=$PATH:$HOME/go/bin" >>~/.zshrc

# Node Setup
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
source $HOME/.nvm/nvm.sh
nvm install --lts
# doesn't work on M1
# nvm install 10
# nvm install 12
nvm install 14
nvm install 16
nvm alias default 14

## Vim 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ../.vimrc ~/.vimrc

# base folders
mkdir -p ~/code
mkdir -p ~/lab
mkdir -p ~/forks

# fonts
mkdir -p hermit
curl -L -o hermit.tar.gz https://pcaro.es/d/otf-hermit-2.0.tar.gz
tar -xvzf ./hermit.tar.gz -C ./hermit
cp -r ./hermit/* ~/Library/Fonts
rm -rf hermit
rm hermit.tar.gz

#!/bin/bash


### TODO
## - Clone vscode settings from git gist

SSDPATH=/Volumes/SSD

# Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git yarn make fastlane ngrok go
brew install clean-me visual-studio-code google-chrome firefox iterm2 docker vlc postgres sublime-merge adoptopenjdk/openjdk/adoptopenjdk8

# Create applications folder on the external drive 
mkdir -p $SSDPATH/Applications

mv /Applications/Firefox.app $SSDPATH/Applications/
mv "/Applications/Google Chrome.app" $SSDPATH/Applications/
mv "/Applications/Docker.app" $SSDPATH/Applications/


# ZSH Setup
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc


# Languages support 
echo "export PATH=$PATH:$HOME/go/bin" >> ~/.zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
source $HOME/.nvm/nvm.sh
nvm install --lts
nvm install 10 
nvm install 12 
nvm alias default 12


## Vim Setup
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

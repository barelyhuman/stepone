#!/bin/bash


### TODO
## - Go Lang download pkg and run it
## - Download Sublime Merge and add it to Applications 
## - Clone vscode settings from git gist



# Homebrew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git yarn make fastlane ngrok
brew install clean-me visual-studio-code google-chrome iterm2 docker vlc postgres adoptopenjdk/openjdk/adoptopenjdk8

# ZSH Setup
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc


# Languages support 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
source ~/.zshrc
nvm install --lts
nvm install 10 
nvm install 12 
nvm alias default 12


## Vim Setup
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

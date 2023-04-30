#!/usr/bin/env bash
set -euxo pipefail

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# uses the accompanying ~/Brewfile
brew bundle install

# ZSH Setup
echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc
echo "source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc

mkdir -p ~/.zsh_themes
curl https://raw.githubusercontent.com/barelyhuman/minzsh/main/minzsh.zsh-theme -Lo ~/.zsh_themes/minzsh.zsh-theme
echo "source ~/.zsh_themes/minzsh.zsh-theme" >>~/.zshrc

# Languages support
echo "export PATH=$PATH:$HOME/go/bin" >>~/.zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
source $HOME/.nvm/nvm.sh
nvm install --lts
# doesn't work on M1
# nvm install 10
# nvm install 12
nvm install 16
nvm alias default 16

## Vim 
curl -sL  https://gist.githubusercontent.com/barelyhuman/16285b2195cfd25d8c84356676cc807d/raw/.vimrc > ~/.vimrc

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

# iterm-themes
mkdir -p ~/iterm-themes
cd ~/iterm-themes
curl -L https://raw.githubusercontent.com/chriskempson/base16-iterm2/master/base16-grayscale.dark.256.itermcolors -o base16-grayscale.dark.256.itermcolors
open ./*.itermcolors
cd -

# Install vim plugins
vim +'PlugInstall --sync' +qa



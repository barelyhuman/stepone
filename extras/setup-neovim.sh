#!/usr/bin/env bash

# install neovim
brew install neovim --HEAD

# install remaining tools
local brew_tools=(
	"fd"
	"ffmpeg"
	"imagemagick"
	"lazygit"
	"ripgrep"
)

for tool in $brew_tools; do
	brew install $tool
done

# Clone the initial config
git clone https://github.com/mvllow/dots .tmp
mkdir -p ~/.config/nvim
cp -r .config/nvim ~/.config/nvim

# manually go in and then run the following
# packer needs dual or more syncs when working with
# nested packages
# :source %
# :PackerSync
# :source %
# :PackerSync
# :source %
# :PackerCompile

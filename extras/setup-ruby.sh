#!/usr/bin/env zsh

# install rbenv-installer
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

# setup rbenv
eval "$(~/.rbenv/bin/rbenv init - zsh)"
echo 'eval "$(rbenv init - zsh)"' >>~/.zshrc

# install the 2 required ruby version
rbenv install 3.0.0 # general overall system work

rbenv install 2.7.5 # needed by react-native

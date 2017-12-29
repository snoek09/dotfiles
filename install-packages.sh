#!/bin/sh

# apt packages
sudo apt update
sudo apt install python3-dev python3-pip git make wget vim ansible

# python packages
sudo pip3 install thefuck

# perl packages
sudo cpan Crypt::HSXKPasswd

# git repos
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

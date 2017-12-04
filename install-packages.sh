#!/bin/sh

# apt packages
sudo apt update
sudo apt install python3-dev python3-pip git make wget

# python packages
sudo pip3 install thefuck

# git repos
wget https://github.com/bbusschots/hsxkpasswd/releases/download/v3.6/Crypt-HSXKPasswd-v3.6.tar.gz
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1


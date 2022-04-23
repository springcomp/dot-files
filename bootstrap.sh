#!/bin/bash

## install dependencies
## ====================

sudo apt-get update
sudo apt-get install python3 python3-pip -y
sudo ln -s /usr/bin/pip3 /usr/local/bin/pip
pip install --user git+ssh://git@github.com/Lokaltog/powerline
pip install --user powerline-gitstatus

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## load custom ~/.bashrc_xxx scripts
## =================================

cat << EOF >> ~/.bashrc

export PATH=~/.local/bin:\$PATH

if [ -f ~/.bashrc_powerline ]; then
    . ~/.bashrc_powerline
fi
if [ -f ~/.bashrc_vim ]; then
    . ~/.bashrc_vim
fi

EOF

## reload
## ======

. .bashrc


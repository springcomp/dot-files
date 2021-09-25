#!/bin/bash

## install dependencies

sudo apt-get install python3 python3-pip -y
sudo ln -s /usr/bin/pip3 /usr/local/bin/pip
pip install --user git+git://github.com/Lokaltog/powerline

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

## load custom ~/.bashrc_xxx scripts
##

cat << EOF >> ~/.bashrc

export PATH=~/.local/bin:\$PATH

if [ -f ~/.bashrc_nodejs ]; then
    . ~/.bashrc_nodejs
fi
if [ -f ~/.bashrc_powerline ]; then
    . ~/.bashrc_powerline
fi
if [ -f ~/.bashrc_vim ]; then
    . ~/.bashrc_vim
fi

EOF

## reload

. .bashrc


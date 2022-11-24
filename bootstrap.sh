#!/bin/bash

## install dependencies
## ====================

if [[ "$CODESPACES" != "true" ]];
then

    sudo apt-get update
    sudo apt-get install python3 python3-pip -y
    sudo ln -s /usr/bin/pip3 /usr/local/bin/pip

    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

fi

[[ -d ~/.ssh ]] || mkdir ~/.ssh
curl --silent https://api.github.com/meta | jq --raw-output '"github.com "+.ssh_keys[]' >>~/.ssh/known_hosts

pip install --user git+https://git@github.com/powerline/powerline
pip install --user powerline-gitstatus

[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +'PluginInstall --sync' +qa

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

if [[ "$CODESPACES" == "true" ]];
then

  rsync -av \
    --exclude='.git' \
    --exclude='.gitmodules' \
    --exclude='.gitignore' \
    --exclude='.poshthemes' \
    --exclude='README.md' \
    /workspaces/.codespaces/.persistedshare/dotfiles/ \
    ~/

fi

. ~/.bashrc

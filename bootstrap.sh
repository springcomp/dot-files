#!/bin/bash

## install dependencies
## ====================

if [[ "$CODESPACES" != "true" ]];
then

    sudo apt-get update
    sudo apt-get install python3 python3-pip -y
    sudo apt-get install python-is-python3 -y
    # [[ ! -L /usr/local/bin/pip ]] || sudo ln -s /usr/bin/pip3 /usr/local/bin/pip
    # [[ ! -L /usr/local/bin-python ]] || sudo ln -s /usr/bin/python3 /usr/local/bin/python

    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

fi

[[ -d ~/.ssh ]] || mkdir ~/.ssh
curl --silent https://api.github.com/meta | jq --raw-output '"github.com "+.ssh_keys[]' >>~/.ssh/known_hosts

pip install --user git+ssh://git@github.com/powerline/powerline
pip install --user powerline-gitstatus

[[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
[[ -d ~/.vim/bundle/vim-monokai-pro ]] || git clone https://github.com/phanviet/vim-monokai-pro.git ~/.vim/bundle/vim-monokai-pro
[[ -d ~/.tmux/plugins/tpm ]] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

vim +PluginInstall +qa


## load custom ~/.bashrc_xxx scripts
## =================================

cat << EOF >> ~/.bashrc

export PATH=~/.local/bin:\$PATH

extensions=("powerline" "python" "vim")
for extension in "${extensions[@]}"
do
  if [ -f ~/.bashrc_$extension ]; then
    source ~/.bashrc_$extension
  fi
done

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

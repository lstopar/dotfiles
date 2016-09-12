#!/bin/bash

#sudo apt-get install -y cmake
#sudo apt-get install -y python-dev

START_DIR=`pwd`

if [ -d "$HOME/.vim" ]; then
    echo 'Remving Vim directory ...'
    rm -rf $HOME/.vim
fi

if [ -f "$HOME/.vimrc" ]; then
    echo 'Removing .vimrc ...'
    rm $HOME/.vimrc
fi

echo 'Linking .vimrc ...'
ln -s `pwd`/.vimrc ~/.vimrc

mkdir -p ~/.vim

echo 'Creating directory ...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'Installing plugins ...'
vim -i NONE -c VundleUpdate -c quitall

echo 'Configuring YouCompleteMe ...'
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer

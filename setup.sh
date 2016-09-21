#!/bin/bash

# sudo apt-get install -y cmake
# sudo apt-get install -y python-dev
# sudo apt-get install libboost-all-dev
# sudo apt-get install clang
# sudo apt-get install libclang-dev

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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
echo 'Installing plugins ...'
vim -i NONE -c VundleUpdate -c quitall

echo 'Configuring YouCompleteMe ...'
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer --system-boost

# link fallback the cpp autocomplete configuration file
# ln -s .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

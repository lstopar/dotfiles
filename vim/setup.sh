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

mkdir -p ~/.vim/config

echo 'Linking .vimrc ...'
ln -s `pwd`/sections/config.vim ~/.vim/config/config.vim
ln -s `pwd`/sections/functions.vim ~/.vim/config/functions.vim
ln -s `pwd`/sections/plugin-end.vim ~/.vim/config/plugin-end.vim
ln -s `pwd`/sections/plugin-init.vim ~/.vim/config/plugin-init.vim
ln -s `pwd`/sections/plugins.vim ~/.vim/config/plugins.vim
ln -s `pwd`/sections/plugins-web.vim ~/.vim/config/plugins-web.vim
ln -s `pwd`/sections/plugins-programming.vim ~/.vim/config/plugins-programming.vim
ln -s `pwd`/.vimrc ~/.vimrc
#ln -s `pwd`/javascript.vim ~/.vim/ftplugin/javascript.vim
#ln -s `pwd`/html.vim ~/.vim/ftplugin/html.vim

mkdir -p ~/.vim

echo 'Creating directory ...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
echo 'Installing plugins ...'
vim -i NONE -c VundleUpdate -c quitall

npm install -g jshint

echo 'Configuring YouCompleteMe ...'
cd ~/.vim/bundle/YouCompleteMe
# ./install.py --clang-completer --tern-completer --system-boost
./install.py --clang-completer --tern-completer

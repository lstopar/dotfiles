#!/bin/bash

ln -s `pwd`/.vimrc ~/.vimrc

mkdir -p ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#!/bin/sh

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

cp -r -f ./submodules/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/
cp -r -f ./submodules/* ~/.vim/bundle/
cp -r -f ./vimrc ~/.vimrc


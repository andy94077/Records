#!/usr/bin/env bash
mv ~/.vimrc ~/.vimrc_backup
cp ~b06902001/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
mkdir -p ~/.vim/{backup,swap}

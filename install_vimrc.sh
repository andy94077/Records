#!/usr/bin/env bash
mv ~/.vimrc ~/.vimrc_backup
wget https://raw.githubusercontent.com/andy94077/Records/master/.vimrc_workstation -O ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
#cd ~/.vim/bundle/YouCompleteMe
#python3 install.py --clang-completer
mkdir -p ~/.vim/{backup,swap}

##########################################################################
# Bash script for configuring Linux terminal working environment         #
# Author:        Vivek Bharadwaj                                         #
# Last Modified: 9/13/2017                                               #
# Description:   Sets up tools and configuration for easy command line   #
#                development. Meant for fresh systems - comment out any  #
#                lines you don't need. Assumes you have git installed.   #
#                For Mac, replace sudo apt-get with brew install.        #
##########################################################################

#! /bin/bash

# Install vim
echo "Installing VIM"
sudo apt-get install vim

# Install tmux - dependencies are libevent and ncurses
echo "Installing tmux"
sudo apt-get install tmux

# Install the ultimate .vimrc with lots of cool plugins
echo "Getting the ultimate .vimrc"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sudo sh ~/.vim_runtime/install_awesome_vimrc.sh

# Clone Vundle
echo "Cloning vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy custom .tmux.conf and .vimrc to root directory
echo "Copying custom .tmux.conf and .vimrc to root"
sudo cp .tmux.conf ~/.tmux.conf
sudo cp .vimrc     ~/.vimrc

# Get Vundle to install all vim plugins
echo "Installing VIM plugins"
sudo vim +PluginInstall +qall

echo "Done! Enjoy!"

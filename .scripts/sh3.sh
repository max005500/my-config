#!/bin/bash
#main
cd ~
sudo apt-get install lolcat
sudo apt-get install cowsay
sudo apt-get install git
sudo apt-get install neovim
sudo apt-get update
sudo apt-get install neovim
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
git config --global init.defaultBranch main
url -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

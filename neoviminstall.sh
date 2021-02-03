#!/bin/bash
#install basic dependencies


#check which distro 

('./checkdistro.sh')

#create folder and clone
mkdir $HOME/.config/nvim
git clone https://github.com/onava006/mynvimconfig
cd mynvimconfig/nvimconfig && mv * $HOME/.config/nvim/

#install and compile neovim 
cd ~
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim

#install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#install fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..rm -rf fonts

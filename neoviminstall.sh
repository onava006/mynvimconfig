#!/bin/bash
#install basic dependencies

pip install pynvim
npm i -g neovim

#check which distro 

('./checkdistro.sh')

#create folders


mkdir $HOME/.config/nvim/

mkdir $HOME/.config/nvim/vim-plug/
mkdir $HOME/.config/nvim/general/
mkdir $HOME/.config/nvim/keys/
mkdir $HOME/.config/nvim/plug-config/
mkdir $HOME/.config/nvim/themes/
mkdir $HOME/.config/nvim/plug-config/

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

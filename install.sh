#!/bin/env bash

#TODO: add_colorscheme -l42
#TODO: add a function for asking y/n
#FIXME: install.sh remains in the dir -l78

clear_screen() {
  clear
  echo "
    _______       _         ___
   (_______)     (_)       / __)
    _     _ _   _ _ ____ _| |__ _   _
   | |   | | | | | |    (_   __) | | |
   | |   | |\ V /| | | | || |  | |_| |
   |_|   |_| \_/ |_|_|_|_||_|   \__  |
                                  /_/
-------------------------------------------
  "
}

mk_backup() {
  echo "Backing up old Neovim Config...."
  CONF=$HOME/.config/nvim
  if [[ -d $CONF ]]
  then
      OLD_CONF=$HOME/.config/nvim.$(date +'%Y-%m-%d_%R:%S')
      mv -f $CONF $OLD_CONF
      echo "moved your config to $OLD_CONF"
  fi
  sleep 2
  clear_screen
}

git_clone() {
  echo "Cloning Nvimfy ...."
  git clone --depth 1 https://github.com/AyeSpacey/Nvimfy $HOME/.config/nvim
  clear_screen
  echo "Cloning Packer ...."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  clear_screen
}

add_colorscheme() {
  INSTALL_PATH=$HOME/.local/share/nvim/site/pack/colors/start

  rm -rf $PREFIX/share/nvim/runtime/colors/*
  read -p 'Install Extra Colorschemes (y)/(n) - ' opt
  if [[ $opt = 'y' ]]; then

    git clone --depth 1 https://github.com/wadackel/vim-dogrun $INSTALL_PATH/dogrun
    git clone --depth 1 https://github.com/arcticicestudio/nord-vim $INSTALL_PATH/nord
    git clone --depth 1 https://github.com/mhartington/oceanic-next $INSTALL_PATH/oceanic-next
    git clone --depth 1 https://github.com/ful1e5/onedark.nvim $INSTALL_PATH/onedark
    git clone --depth 1 https://github.com/srcery-colors/srcery-vim $INSTALL_PATH/srcery-vim

  echo "Done !"
  fi
  clear_screen
}

clear_screen
read -p 'Do You Want To Install Nvimfy (y)/(n) - ' opt
if [[ $opt = 'y' ]]; then

  mk_backup
  git_clone
  add_colorscheme
  echo "Wait for the plugins to be installed,"
  echo "then Reload Neovim..."
  echo ""
  echo "Launching Neovim-(Nvimfied) !"
  sleep 1

else
  echo "👋 Bye Bye !"
  sleep 1
  exit
fi
rm install.sh
nvim +PackerSync

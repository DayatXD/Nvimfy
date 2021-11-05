#!/bin/env bash

nvimfy() {
  clear
  echo "
  --  _______       _         ___        --
  -- (_______)     (_)       / __)       --
  --  _     _ _   _ _ ____ _| |__ _   _  --
  -- | |   | | | | | |    (_   __) | | | --
  -- | |   | |\ V /| | | | || |  | |_| | --
  -- |_|   |_| \_/ |_|_|_|_||_|   \__  | --
  --
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
  nvimfy
}

git_clone() {
  echo "Cloning Packer ...."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  nvimfy
  echo "Cloning Nvimfy ...."
  git clone --depth 1 https://github.com/AyeSpacey/Nvimfy $HOME/.config/nvim
  nvimfy
}

add_colorscheme() {

  INSTALL_PATH=$HOME/.local/share/nvim/site/pack/colors/start

  rm -rf $PREFIX/share/nvim/runtime/colors/*
  read -p 'Install Extra Colorschemes (y)/(n) - ' opt
  if [[ $opt = 'y' ]]; then

    git clone --depth 1 https://github.com/theniceboy/nvim-deus $INSTALL_PATH/deus
    git clone --depth 1 https://github.com/elianiva/gitgud.nvim $INSTALL_PATH/gitgud
    git clone --depth 1 https://github.com/wadackel/vim-dogrun $INSTALL_PATH/dodrun
    git clone --depth 1 https://github.com/eddyekofo94/gruvbox-flat.nvim $INSTALL_PATH/gruv-flat
    git clone --depth 1 https://github.com/srcery-colors/srcery-vim $INSTALL_PATH/srcery
    git clone --depth 1 https://github.com/xiyaowong/nvim-transparent $INSTALL_PATH/nvim-transparent

  echo "Done !"
  else
    echo "Okay !"
  fi
  nvimfy
}

nvimfy
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
nvim +PackerSync

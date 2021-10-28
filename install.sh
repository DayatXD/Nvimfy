#!/bin/env bash

CONF=$HOME/.config/nvim

if [[ -d $CONF ]]
then
    OLD_CONF=$HOME/.config/nvim.$(date +'%Y-%m-%d_%R:%S')
    mv -f $CONF $OLD_CONF
    echo "moved your config to $OLD_CONF"
fi

git clone https://github.com/AyeSpacey/Nvimfy $HOME/.config/nvim

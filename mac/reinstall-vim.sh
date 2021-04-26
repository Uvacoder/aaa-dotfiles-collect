#!/bin/sh

# to make execurable
# chmod +x install-vim.sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Reinstalling vim.$(tput sgr 0)"

mkdir ~/.config

ln -s ~/.dotfiles/nvim ~/.config/nvim

ln -s ~/.dotfiles/nvim/lua/config/dark.lua ~/.local/share/nvim/site/pack/packer/start/lualine.nvim/lua/lualine/themes/dark.lua

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: the ende.$(tput sgr 0)"

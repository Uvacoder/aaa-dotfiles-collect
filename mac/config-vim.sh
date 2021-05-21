#!/bin/sh

# to make execurable
# chmod +x install-vim.sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Config vim.$(tput sgr 0)"

echo "$(tput setaf 2)FRIDAY: create config folder.$(tput sgr 0)"
mkdir ~/.config

echo "$(tput setaf 2)FRIDAY: link nvim folder.$(tput sgr 0)"
ln -s ~/.dotfiles/nvim ~/.config/nvim

echo "$(tput setaf 2)FRIDAY: link lualine dark theme.$(tput sgr 0)"
ln -s ~/.dotfiles/nvim/lua/config/lualine-dark.lua ~/.local/share/nvim/site/pack/packer/start/lualine.nvim/lua/lualine/themes/dark.lua

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: the ende.$(tput sgr 0)"

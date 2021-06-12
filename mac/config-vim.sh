#!/bin/sh

# to make execurable
# chmod +x install-vim.sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Config vim.$(tput sgr 0)"

echo "$(tput setaf 2)FRIDAY: create config folder.$(tput sgr 0)"
mkdir ~/.config

echo "$(tput setaf 2)FRIDAY: link nvim folder.$(tput sgr 0)"
ln -s ~/.dotfiles/nvim-coc ~/.config/nvim

# ln -s ~/.dotfiles/VapourNvim ~/.config/nvim

# ln -s ~/.dotfiles/nvim-lsp ~/.config/nvim


nvim +PackerSync

echo "$(tput setaf 2)FRIDAY: link lualine dark theme.$(tput sgr 0)"
ln -s ~/.dotfiles/nvim-coc/lua/config/lualine-dark.lua ~/.local/share/nvim/site/pack/packer/start/lualine.nvim/lua/lualine/themes/dark.lua


# to approve eslint
:CocCommand eslint.showOutputChannel


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: the ende.$(tput sgr 0)"

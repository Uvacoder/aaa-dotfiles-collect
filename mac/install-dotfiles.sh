#!/bin/sh

# to make execurable
# chmod +x install-dotfiles.sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Greetings. Clonning dotfiles.$(tput sgr 0)"

git clone https://github.com/sldobri/dotfiles.git ~/.dotfiles

echo "$(tput setaf 2)FRIDAY: Clean old linked files/folder.$(tput sgr 0)"

rm -rf ~/.config
rm ~/.zshrc
rm ~/.wgetrc
rm ~/.gitconfig
rm ~/.global_ignore
rm ~/.gitignore_global

echo "$(tput setaf 2)FRIDAY: create config folder.$(tput sgr 0)"

mkdir ~/.config

echo "$(tput setaf 2)FRIDAY: link dotfiles.$(tput sgr 0)"

ln -s ~/.dotfiles/zsh/zsh  ~/.zshrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/wget/wgetrc  ~/.wgetrc
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/global_ignore ~/.global_ignore
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global

echo "$(tput setaf 2)FRIDAY: Load .zshrc.$(tput sgr 0)"

source .zshrc

echo "$(tput setaf 2)FRIDAY: Finished .$(tput sgr 0)"
echo "---------------------------------------------------------"

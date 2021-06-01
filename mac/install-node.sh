#!/bin/sh

# to make execurable
# chmod +x install-node.sh



echo "$(tput setaf 2)FRIDAY: Installing Node Global package$(tput sgr 0)"

node_packages=(
  "neovim"
  "eslint"
  "prettier"
  "@vue/cli"
  "serve"
  "typescript"
)

for package in "${node_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  npm i -g $package
done
echo "$(tput setaf 2)FRIDAY: Node Packages installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: System update complete. Currently running at 100% power. Enjoy.$(tput sgr 0)"
echo "---------------------------------------------------------"

exit 0
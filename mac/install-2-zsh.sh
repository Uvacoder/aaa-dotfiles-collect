#!/bin/sh

# to make execurable
# chmod +x install-zsh.sh



echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Installing oh-my-zsh.$(tput sgr 0)"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "$(tput setaf 2)FRIDAY: oh-my-zsh installed.$(tput sgr 0)"
else
  echo "$(tput setaf 2)FRIDAY: oh-my-zsh already installed.$(tput sgr 0)"
fi


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Checking for Git installation.$(tput sgr 0)"

GIT_FOLDER="/usr/local/bin/git"
if ! [[ -f "$GIT_FOLDER" ]]; then
  echo "$(tput setaf 1)FRIDAY: Invalid git installation. Aborting. Please install git.$(tput sgr 0)"
  exit 1
fi

echo "$(tput setaf 2)FRIDAY: Installing Git Packages.$(tput sgr 0)"

tap_packages=(
  "https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions"
  "https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"
  "--depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k"
)

for package in "${tap_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Brew Tapping $package.$(tput sgr 0)"
  git clone $package
done

echo "$(tput setaf 2)FRIDAY: Git Packages installed.$(tput sgr 0)"
echo "---------------------------------------------------------"

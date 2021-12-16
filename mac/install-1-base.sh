#!/bin/sh

# to make execurable
# chmod +x install.sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Checking for Homebrew installation.$(tput sgr 0)"

BREW_FOLDER="/usr/local/bin/brew"

if [ -f "$BREW_FOLDER" ]
then
  echo "$(tput setaf 2)FRIDAY: Homebrew is installed.$(tput sgr 0)"
else
  echo "$(tput setaf 3)FRIDAY: Installing Homebrew. Homebrew requires osx command lines tools, please download xcode first$(tput sgr 0)"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew analytics off
  echo "$(tput setaf 2)FRIDAY: Homebrew installed.$(tput sgr 0)"
fi

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Installing Homebrew Cask packages.$(tput sgr 0)"

tap_packages=(
  "homebrew/cask"
  # "homebrew/cask-fonts"
  "homebrew/core"
  "teamookla/speedtest"
)

for package in "${tap_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Brew Tapping $package.$(tput sgr 0)"
  brew tap $package
done
echo "$(tput setaf 2)FRIDAY: Homebrew Tap installed.$(tput sgr 0)"

echo "$(tput setaf 2)FRIDAY: Installing Homebrew System Packages.$(tput sgr 0)"

brew_packages=(
  "autoconf"
  "git"
  "makedepend"
  # "luarocks"
  "python3"
  # "luajit"
  # "neovim" download no site do neovim
  # "node@14" download no site do nodejs
  "wget"
  "tmux"
  "alacritty"
  "z"
  "speedtest --force"
  "microsoft-edge"
)

for package in "${brew_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  brew install $package
done
echo "$(tput setaf 2)FRIDAY: Homebrew System Package installed.$(tput sgr 0)"

echo "$(tput setaf 2)FRIDAY: Installing Homebrew Cash Apps.$(tput sgr 0)"
cask_packages=(
  # "sublime-text"
  # "font-hack-nerd-font"
  # "iterm2"
  # "transmission"
  # "vlc"
  # "robo-3t"
  # "sequel-pro"
  # "whatsApp"
  "bitwarden"
  "evernote"
  "github"
  "the-unarchiver"
  # "cyberduck"
  "dropbox"
  "postman"
  "forklift"
  "notion"
  "responsively"
  "numi"
  "icab"
)

for package in "${cask_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  brew install --cask $package
done
echo "$(tput setaf 2)FRIDAY: Homebrew Cask Apps installed.$(tput sgr 0)"


# echo "---------------------------------------------------------"
# echo "$(tput setaf 2)FRIDAY: Installing Python packages.$(tput sgr 0)"
#
# pip3_packages=(
#   "neovim"
#   "vim-vint"
# )
#
# for package in "${pip3_packages[@]}"
# do
#   echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
#   pip3 install $package
# done
# echo "$(tput setaf 2)FRIDAY: Python Packages installed.$(tput sgr 0)"



echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: install old versions.$(tput sgr 0)"

old_packages=(
  "https://www.maintain.se/downloads/Cocktail12ME.dmg"
  "https://dl.devmate.com/com.macpaw.CleanMyMac3/CleanMyMac3.dmg"
  "https://sipapp.io/updates/v1/sip-1.2.dmg"
  "https://download.sublimetext.com/Sublime%20Text%20Build%203211.dmg"
)

for package in "${old_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: download old version of $package.$(tput sgr 0)"
  wget $package --no-check-certificate
done
echo "$(tput setaf 2)FRIDAY: Old versions installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
# Use Plain Text Mode as Default
defaults write com.apple.TextEdit RichText -int 0
# Unhide User Library Folder
chflags nohidden ~/Library
# Show "Quit Finder" Menu Item
defaults write com.apple.finder QuitMenuItem -bool true
# Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool true
killall Finder
# Automatic Restart on System Freeze
sudo systemsetup -setrestartfreeze on
# Disable Bluetooth
sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0 && \
sudo killall -HUP blued
# Disable Sound Effects on Boot
sudo nvram SystemAudioVolume=" "
sudo nvram BootAudio=%00
# Disable AirDrop
defaults write com.apple.NetworkBrowser DisableAirDrop -bool YES
# remove all icons from dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
killall Dock


sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.spindump.plist
sudo mv /System/Library/LaunchDaemons/com.apple.spindump.plist /System/Library/LaunchDaemons/com.apple.spindump.plist.bak

sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.tailspind.plist
sudo mv /System/Library/LaunchDaemons/com.apple.tailspind.plist /System/Library/LaunchDaemons/com.apple.tailspind.plist.bak


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: System update complete. Currently running at 100% power. Enjoy.$(tput sgr 0)"
echo "---------------------------------------------------------"

exit 0

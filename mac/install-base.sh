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
  "homebrew/cask-fonts"
# "sscotth/monoid"
  "homebrew/core"
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
  "luarocks"
  "python3"
  "--HEAD neovim"
  "node@14"
  "wget"
  "z"
  "mas-cli/tap/mas"
)

for package in "${brew_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  brew install $package
done
echo "$(tput setaf 2)FRIDAY: Homebrew System Package installed.$(tput sgr 0)"

echo "$(tput setaf 2)FRIDAY: Installing Homebrew Cash Apps.$(tput sgr 0)"
cask_packages=(
  "sublime-text"
  "font-hack-nerd-font"
# "font-monoid-xtralarge-dollar-1-l-nocalt"
  "font-monoid-nerd-font"
  "iterm2"
  "transmission"
# "vlc"
# "mas-cli/tap/mas"
  "robo-3t"
  "sequel-pro"
  "whatsApp"
  "bitwarden"
  "evernote"
  "github"
  "the-unarchiver"
  "cyberduck"
  "dropbox"
  "postman"
  "forklift"
)

for package in "${cask_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  brew install --cask $package
done
echo "$(tput setaf 2)FRIDAY: Homebrew Cask Apps installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Installing Python packages.$(tput sgr 0)"

pip3_packages=(
  "neovim"
  "vim-vint"
)

for package in "${pip3_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  pip3 install $package
done
echo "$(tput setaf 2)FRIDAY: Python Packages installed.$(tput sgr 0)"


echo "---------------------------------------------------------"

echo "$(tput setaf 2)FRIDAY: Disable touristd.$(tput sgr 0)"
defaults write com.apple.touristd firstOSLogin -date "$(date)"
defaults write com.apple.touristd seed-numNotifications-f/Pn3F4RScOh+GUBKO9sRA -int 1
defaults write com.apple.touristd seed-notificationDueDate-f/Pn3F4RScOh+GUBKO9sRA -date "$(date)"
# defaults read com.apple.touristd
# Use Plain Text Mode as Default
defaults write com.apple.TextEdit RichText -int 0
# Enable dock Autohide
defaults write com.apple.dock autohide -bool true
# Show Full Path in Finder Title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Unhide User Library Folder
chflags nohidden ~/Library
# Show "Quit Finder" Menu Item
defaults write com.apple.finder QuitMenuItem -bool true
# Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool true
# Set Default Finder Location to Home Folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
# Hide Desktop Icons
defaults write com.apple.finder CreateDesktop -bool false && \
killall Finder
# Enable Chime When Charging
defaults write com.apple.PowerChime ChimeOnAllHardware -bool true && \
open /System/Library/CoreServices/PowerChime.app
# Automatic Restart on System Freeze
sudo systemsetup -setrestartfreeze on
# Disable Bluetooth
sudo defaults write /Library/Preferences/com.apple.Bluetooth ControllerPowerState -int 0 && \
sudo killall -HUP blued
# Disable Sound Effects on Boot
sudo nvram SystemAudioVolume=" "
sudo nvram BootAudio=%00
# Disable Bonjour Service
sudo defaults write /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist ProgramArguments -array-add "-NoMulticastAdvertisements"
# Set Computer Name/Host Name
sudo scutil --set ComputerName "mac" && \
sudo scutil --set HostName "mac" && \
sudo scutil --set LocalHostName "mac" && \
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "mac"
# Enable Firewall Service
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
# Disable AirDrop
defaults write com.apple.NetworkBrowser DisableAirDrop -bool YES
echo "$(tput setaf 2)FRIDAY: Remove all icons from Dock.$(tput sgr 0)"
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
killall Dock



echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: System update complete. Currently running at 100% power. Enjoy.$(tput sgr 0)"
echo "---------------------------------------------------------"

exit 0

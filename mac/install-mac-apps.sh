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
  "node"
  "python3"
  "--HEAD neovim"
  "wget"
  "z"
  "zsh"
  "zsh-autosuggestions"
  "romkatv/powerlevel10k/powerlevel10k"
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
  "iterm2"
  "transmission"
# "vlc"
  "mas-cli/tap/mas"
# "robo-3t"
  "whatsApp"
  "bitwarden"
  "evernote"
  "popclip"
  "github"
  "the-unarchiver"
)

for package in "${cask_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  brew install --cask $package
done
echo "$(tput setaf 2)FRIDAY: Homebrew Cask Apps installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Installing PopClip extensions.$(tput sgr 0)"

pop_packages=(
  "https://pilotmoon.com/popclip/extensions/ext/RunCommand.popclipextz --no-check-certificate"
  "https://pilotmoon.com/popclip/extensions/ext/GoogleTranslate.popclipextz --no-check-certificate"
  "http://pilotmoon.com/popclip/extensions/ext/Uppercase.popclipextz --no-check-certificate"
  "http://pilotmoon.com/popclip/extensions/ext/Lowercase.popclipextz --no-check-certificate"
  "http://pilotmoon.com/popclip/extensions/ext/Capitalize.popclipextz --no-check-certificate"
  "https://pilotmoon.com/popclip/extensions/ext/Evernote.popclipextz --no-check-certificate"
  "https://pilotmoon.com/popclip/extensions/ext/Calculate.popclipextz --no-check-certificate"
  "https://pilotmoon.com/popclip/extensions/ext/OpenInChrome.popclipextz --no-check-certificate"
  "https://pilotmoon.com/popclip/extensions/ext/Todoist.popclipextz --no-check-certificate",
  "https://pilotmoon.com/popclip/extensions/ext/Hyphenate.popclipextz --no-check-certificate",
  "https://pilotmoon.com/popclip/extensions/ext/URLEncode.popclipextz --no-check-certificate"
)

for package in "${pop_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: download $package.$(tput sgr 0)"
  wget $package
done
echo "$(tput setaf 2)FRIDAY: PopClip extensions installed.$(tput sgr 0)"



echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: install old versions.$(tput sgr 0)"

old_packages=(
  "wget https://www.maintain.se/downloads/Cocktail12ME.dm --no-check-certificate"
  "wget https://dl.devmate.com/com.macpaw.CleanMyMac3/CleanMyMac3.dmg --no-check-certificate"
  "wget https://sipapp.io/updates/v1/sip-1.2.dmg --no-check-certificate"
)

for package in "${old_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: download old version of $package.$(tput sgr 0)"
  wget $package
done
echo "$(tput setaf 2)FRIDAY: Old versions installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Installing Mas packages.$(tput sgr 0)"

mas_packages=(
  "824171161"  #Affinity Designer
  "937984704"  #Amphetamine
# "671736912"  #FruitJuice
# "1289197285" #MindNode
# "910837444"  #Photo Editor Movavi
  "442168834"  #SiteSucker
# "443987910"  #1Password
  "634108295"  #Acorn
# "406056744"  #Evernote
# "445189367"  #PopClip
  "1176895641" #Spark
# "425424353"  #The Unarchiver
# "585829637"  #Todoist?
# "1384080005" #Tweetbot
# "1147396723" #WhatsApp
)

for package in "${mas_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  mas install $package
done
echo "$(tput setaf 2)FRIDAY: Mas Packages installed.$(tput sgr 0)"


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

echo "$(tput setaf 2)FRIDAY: linking dotfiles.$(tput sgr 0)"

mkdir ~/.config

DOTFILES_FOLDER=$HOME/.dotfiles
ln -s $DOTFILES_FOLDER/zsh/p10k.zsh $HOME/.p10k.zsh
ln -s $DOTFILES_FOLDER/nvim $HOME/.config/nvim
ln -s $DOTFILES_FOLDER/zsh/zshrc $HOME/.zshrc
ln -s $DOTFILES_FOLDER/git/gitconfig $HOME/.gitconfig
ln -s $DOTFILES_FOLDER/git/gitignore_global $HOME/.gitignore_global
ln -s $DOTFILES_FOLDER/git/global_ignore $HOME/.global_ignore
ln -s $DOTFILES_FOLDER/wget/wgetrc $HOME/.wgetrc

echo "$(tput setaf 2)FRIDAY: Linked dotfiles.$(tput sgr 0)"

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Setting Mac defaults.$(tput sgr 0)"

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
echo "$(tput setaf 2)FRIDAY: Switching shell to zsh. You may need to logout.$(tput sgr 0)"

sudo sh -c "echo $(which zsh) >> /etc/shells"
chsh -s $(which zsh)



echo "---------------------------------------------------------"
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

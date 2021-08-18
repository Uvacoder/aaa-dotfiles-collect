#!/bin/sh

# to make execurable
# chmod +x install.sh

echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Greetings. Preparing to power up and begin diagnostics.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: install old versions.$(tput sgr 0)"

old_packages=(
  "wget https://www.maintain.se/downloads/Cocktail12ME.dmg"
  "wget https://dl.devmate.com/com.macpaw.CleanMyMac3/CleanMyMac3.dmg"
  "wget https://sipapp.io/updates/v1/sip-1.2.dmg"
)

for package in "${old_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: download old version of $package.$(tput sgr 0)"
  wget $package --no-check-certificate
done
echo "$(tput setaf 2)FRIDAY: Old versions installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: Installing Mas packages.$(tput sgr 0)"

mas_packages=(
  "824171161"  # Affinity Designer
  "937984704"  # Amphetamine
# "671736912"  # FruitJuice
# "1289197285" # MindNode
# "910837444"  # Photo Editor Movavi
  "442168834"  # SiteSucker
# "443987910"  # 1Password
  "634108295"  # Acorn
# "406056744"  # Evernote
# "445189367"  # PopClip
  "1176895641" # Spark
# "425424353"  # The Unarchiver
# "585829637"  # Todoist?
# "1384080005" # Tweetbot
# "1147396723" # WhatsApp
)

for package in "${mas_packages[@]}"
do
  echo "$(tput setaf 2)FRIDAY: Installing $package.$(tput sgr 0)"
  #mas install $package
done
echo "$(tput setaf 2)FRIDAY: Mas Packages installed.$(tput sgr 0)"
echo "---------------------------------------------------------"


# echo "$(tput setaf 2)FRIDAY: Installing PopClip extensions.$(tput sgr 0)"

# pop_packages=(
#   "https://pilotmoon.com/popclip/extensions/ext/RunCommand.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/OpenInEdge.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/Uppercase.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/Lowercase.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/Capitalize.popclipextz"
#  # "https://pilotmoon.com/popclip/extensions/ext/Evernote.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/Calculate.popclipextz"
#  # "https://pilotmoon.com/popclip/extensions/ext/OpenInChrome.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/Hyphenate.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/URLEncode.popclipextz"
#   "https://pilotmoon.com/popclip/extensions/ext/GoogleTranslate.popclipextz"
# )

# for package in "${pop_packages[@]}"
# do
#   echo "$(tput setaf 2)FRIDAY: download $package.$(tput sgr 0)"
#   wget $package --no-check-certificate
# done
# echo "$(tput setaf 2)FRIDAY: PopClip extensions installed.$(tput sgr 0)"


echo "---------------------------------------------------------"
echo "$(tput setaf 2)FRIDAY: System update complete. Currently running at 100% power. Enjoy.$(tput sgr 0)"
echo "---------------------------------------------------------"

exit 0

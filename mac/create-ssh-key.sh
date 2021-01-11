#!/bin/sh

# to make execurable
# chmod +x createKeygen.sh

# create keygen
ssh-keygen -t rsa -b 4096 -C "sergiodobri@gmail.com"

# create config and add content
touch ~/.ssh/config
echo 'Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa' >> ~/.ssh/config

# run
ssh-add -K ~/.ssh/id_rsa

# verify if exist
ls -al ~/.ssh

pbcopy < ~/.ssh/id_rsa.pub
# Copies the contents of the id_rsa.pub file to your clipboard

#execute
ssh -T git@github.com

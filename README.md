# dotfiles

```shell

#install tnux
brew install tmux

#install tpm tmux plugins manager
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#git clone https://github.com/erikw/tmux-powerline.git ~/.tmux/style/tmux-powerline

```

At this point, you'll have these config files symlinked in `~./config/nvim`. In
the example code I'm using brew to install stow, but it's a gnu until and may
be already available on your linux distro.

Next, we'll have to bootstrap the package manager, Packer. This will take a few
cranks, so just repeat this step a few times until everything is installed:

```shell
nvim
:PackerSync
:qa
```

### 1 - Clonar github repo

```
git clone https://github.com/dobbbri/dotfiles.git ~/.dotfiles
```

### 2 - Remove old linked files/folders

```
rm -rf ~/.config
rm ~/.p10k.zsh
rm ~/.zshrc
#rm ~/.wgetrc
rm ~/.gitconfig
rm ~/.global_ignore
rm ~/.gitignore_global
#rm ~/.tmux/style/tmux-powerline/themes/default.sh
```

### 3 - Make config fold

```
mkdir ~/.config
```

### 4 - link files

```
ln -s ~/.dotfiles/zsh/zshrc  ~/.zshrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/wget/wgetrc  ~/.wgetrc
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/global_ignore ~/.global_ignore
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.alacritty.yml
ln -s ~/.dotfiles/kitty  ~/.config/kitty

#ln -s ~/.dotfiles/kitty  ~/.config/kitty/kitty.conf
#ln -s ~/.dotfiles/zsh/p10k.zsh ~/.p10k.zsh
#ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
#ln -s ~/.dotfiles/tmux/default.sh ~/.tmux/style/tmux-powerline/themes/default.sh

cp ~/.dotfiles/battery/local.battery.plist ~/Library/LaunchAgents/local.battery.plist


# sudo npm install -g @volar/vue-language-server typescript typescript-language-server @fsouza/prettierd eslint_d
sudo npm install -g @volar/vue-language-server typescript typescript-language-server


curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-osx64/bin/nvim

```

### 5 - Load zsh config file

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

```
source .zshrc
```

```
install macports:
https://ports.macports.org


install rust, stylua and ripgrep for neovim

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo install stylua
cargo install ripgrep
cargo install tree-sitter-cli
cargo install ruget


install vscode-codicons for lspkind
You can obtain the codicons.ttf file by following this link. (required for the icons to show properly.)
https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf
downloadand install the font

```

### finished!!!

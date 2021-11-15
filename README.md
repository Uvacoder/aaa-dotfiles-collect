# dotfiles

```shell
# Install neovim from head of measter
brew install neovim --HEAD

# You can upgrade it later with
brew upgrade neovim --fetch-head
```

At this point, you'll have these config files symlinked in `~./config/nvim`. In
the example code I'm using brew to install stow, but it's a gnu until and may
be already available on your linux distro.

Next, we'll have to bootstrap the package manager, Packer. This will take a few
cranks, so just repeat this step a few times until everything is installed:

```shell
npm install -g typescript typescript-language-server vls @tailwindcss/language-server
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
rm ~/.wgetrc
rm ~/.gitconfig
rm ~/.global_ignore
rm ~/.gitignore_global

rm ~/.local/share/nvim/site/pack/packer/start/lualine.nvim/lua/lualine/themes/dark.lua
```

### 3 - Make config fold

```
mkdir ~/.config
```

### 4 - link files

```
ln -s ~/.dotfiles/zsh/p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/zsh/zshrc  ~/.zshrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/wget/wgetrc  ~/.wgetrc
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/global_ignore ~/.global_ignore
ln -s ~/.dotfiles/git/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/alacritty/alacritty.yml ~/.alacritty.yml
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/lua/stylua.toml ~/stylua.toml

ln -s ~/.dotfiles/nvim/lua/config/lualine-dark.lua ~/.local/share/nvim/site/pack/packer/start/lualine.nvim/lua/lualine/themes/dark.lua
```

### 5 - Load zsh config file

```
source .zshrc
```

### finished!!!

# dotfiles

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
```

### 5 - Load zsh config file

```
source .zshrc
```

### finished!!!

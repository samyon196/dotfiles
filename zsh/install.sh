#!/bin/bash

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." ; pwd -P )
# create dist dir if...
if [ ! -d $dotfiles/.dist ]; then
	mkdir -p $dotfiles/.dist;
fi
# Remove linker file, if any:
rm -rf $dotfiles/.dist/.zshrc
rm -rf $dotfiles/.dist/.p10k.zsh

# Remove current .vimrc
rm -rf ~/.p10k.zsh
rm -rf ~/.zshrc

#Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
cp $dotfiles/zsh/.p10k.zsh $dotfiles/.dist/.p10k.zsh
cp $dotfiles/zsh/.zshrc $dotfiles/.dist/.zshrc
ln $dotfiles/.dist/.p10k.zsh ~/.p10k.zsh
ln $dotfiles/.dist/.zshrc ~/.zshrc

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting


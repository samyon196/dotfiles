#!/bin/bash

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." ; pwd -P )
# Remove linker file, if any:
rm -rf $dotfiles/.dist/.zshrc
rm -rf $dotfiles/.dist/.p10k.zsh

# Remove current .vimrc
rm -rf ~/.p10k.zsh
rm -rf ~/.zshrc

#Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
cp $dotfiles/zsh/.p10k.zsh $dotfiles/.dist/.p10k.zsh
cp $dotfiles/zsh/.zshrc $dotfiles/.dist/.zshrc
ln $dotfiles/.dist/.p10k.zsh ~/.p10k.zsh
ln $dotfiles/.dist/.zshrc ~/.zshrc
#!/bin/bash

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." ; pwd -P )

# Remove linker file, if any:
rm -rf $dotfiles/.dist/.vimrc.linker

# Remove current .vimrc
rm -rf ~/.vimrc

# Create new linker, from *.vim files only 
cd $dotfiles/vim
for file in *.vim
do
    echo "[install-vim] Adding "$file
    echo "source $dotfiles/vim/$file" >> $dotfiles/.dist/.vimrc.linker
done

# Softlink to .vimrc
echo "[install-vim] Creating symlink"
ln $dotfiles/.dist/.vimrc.linker ~/.vimrc
echo "[install-vim] Done!"
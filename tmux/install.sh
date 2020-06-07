#!/bin/bash

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." ; pwd -P )

# Remove linker file, if any:
rm -rf $dotfiles/.dist/.tmux.linker

# Remove current .tmux.conf
rm -rf ~/.tmux.conf

# Create new linker, from *.tmux files only 
cd $dotfiles/tmux
for file in *.tmux
do
    echo "[install-tmux] Adding "$file
    echo "source $dotfiles/tmux/$file" >> $dotfiles/.dist/.tmux.linker
done

# Softlink to .tmuxrc
echo "[install-tmux] Creating symlink"
ln $dotfiles/.dist/.tmux.linker ~/.tmux.conf
echo "[install-tmux] Done!"
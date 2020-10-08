#!/bin/sh
# cathup on repos
sudo pacman -Sy
# Install from official repos
sudo pacman -S --noconfirm base-devel binutils git yay zsh tmux vim z bat fd ripgrep exa ttf-nerd-fonts-symbols
# Install from AUR
yay -S --noconfirm tealdeer-bin peco-bin icdiff dust ruby-colorls
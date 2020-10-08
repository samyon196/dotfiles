#!/bin/sh
# cathup on repos
sudo pacman -Sy

# Install from official repos
sudo pacman -S --noconfirm base-devel binutils git yay zsh tmux vim z bat fd ripgrep exa ttf-nerd-fonts-symbols

# Install from AUR
yay -S --noconfirm peco-bin
yay -S --noconfirm icdiff
yay -S --noconfirm dust-bin
yay -S --noconfirm ruby-colorls

# install tldr
sudo curl -o /usr/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
sudo chmod +x /usr/bin/tldr


#!/bin/sh
# cathup on repos
sudo pacman -Sy
# Install from official repos
sudo pacman -S --noconfirm base-devel binutils git yay zsh tmux vim z bat fd ripgrep exa ttf-nerd-fonts-symbols
# Add z to work..

echo "[[ -r \"/usr/share/z/z.sh\" ]] && source /usr/share/z/z.sh" >> ~/.zshrc
# Install from AUR
yay -S --noconfirm peco-bin icdiff dust-bin ruby-colorls

# install tldr
curl -o /usr/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
chmod +x /usr/bin/tldr
echo "TLDR_HEADER='magenta bold underline'" >> ~/.zshrc
echo "TLDR_QUOTE='italic'" >> ~/.zshrc
echo "TLDR_DESCRIPTION='green'" >> ~/.zshrc
echo "TLDR_CODE='yellow'" >> ~/.zshrc
echo "TLDR_PARAM='red'" >> ~/.zshrc

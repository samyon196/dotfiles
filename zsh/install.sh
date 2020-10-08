#!/bin/bash

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." ; pwd -P )

#Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
cp $dotfiles/zsh/.p10k.zsh $dotfiles/.dist/.p10k.zsh
ln $dotfiles/.dist/.vimrc.linker ~/.p10k.zsh

sudo chsh /bin/zsh manjaro # TODO!! 

echo "if [[ -r \"${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh\" ]]; then" >> ~/.zshrc
echo "    source \"${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh\"" >> ~/.zshrc
echo "fi" >> ~/.zshrc

echo "[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >> ~/.zshrc
#!/bin/bash

# Remove dist folder
rm -rf .dist
mkdir .dist

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $dotfiles
for folder in [^.]*/
do
    echo "Installing "$folder
    echo "Executing: "$dotfiles/$folder"install.sh"
    /bin/bash "$dotfiles/$folder"install.sh
done
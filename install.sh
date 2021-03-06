#!/bin/bash
sudo echo "Sudo approved, continue.."
# Remove dist folder
rm -rf .dist
mkdir .dist

# Get dotfiles location (parent of this script)
dotfiles=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $dotfiles
for folder in [^.]*/
do
    echo "[install-main] Installing: "$folder
    /bin/bash "$dotfiles/$folder"install.sh
done
echo "[install-main] Done, Loggin you out for changes to take place"
kill -9 -1
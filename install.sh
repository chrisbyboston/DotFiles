#!/bin/bash

if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install stow gpg git-crypt paperkey qrencode zbar coreutils teleport

read -n1 -s -r -p $'Import your private gpg key then press any key to continue...\n' key

mkdir -p $HOME/Documents/code/iwschris/
cd $HOME/Documents/code/iwschris/

git clone git@github.com:iwschris/DotFiles.git

cd DotFiles || exit

stow -t ~ .

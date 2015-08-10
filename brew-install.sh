#!/bin/sh

if [ ! -x "$(which brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
    brew tap homebrew/brewdler
    brew brewdle
    cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty\ Regular\ for\ Powerline.ttf ~/Library/Fonts
    cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty\ Bold\ for\ Powerline.ttf ~/Library/Fonts
    cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty-Regular.ttf ~/Library/Fonts
    cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty-Bold.ttf ~/Library/Fonts
    fc-cache -vf
else
    echo "Homebrew is already installed."
    exit 1
fi;

#!/bin/sh

if [ ! -x "$(which brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew bundle
    cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty*.ttf ~/Library/Fonts/
    fc-cache -vf
else
    echo "Homebrew is already installed."
    exit 1
fi;

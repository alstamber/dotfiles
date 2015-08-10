#!/bin/sh
cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        ln -Fis "$PWD/$dotfile" $HOME
    fi
done

mkdir -p $HOME/bin 2>/dev/null
for binfile in bin/*
do
    ln -Fis "$PWD/$binfile" $HOME/bin/
done

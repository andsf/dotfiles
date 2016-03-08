#! /bin/sh

#check directory and move directory
if [ -e ~/.vim/bundle ]; then
 cd ~/.vim/bundle
else
 mkdir -p ~/.vim/bundle
 cd ~/.vim/bundle
fi

#NeoBundle install
git clone git://github.com/Shougo/neobundle.vim


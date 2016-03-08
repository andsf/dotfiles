#! /bin/sh

#vim setup

##check directory and move directory
echo 'check directory'
if [ -e ~/.vim/bundle ]; then
 echo 'exit directory'
 cd ~/.vim/bundle
else
 mkdir -p ~/.vim/bundle
 cd ~/.vim/bundle
fi

##NeoBundle install
echo 'NeoBundle install'
git clone git://github.com/Shougo/neobundle.vim

#set symbolic link
echo 'set symbolic link'
cd ~
ln -s ~/dotfile/.vimrc ~/.vimrc
ln -s ~/dotfile/.bashrc ~/.bashrc
ln -s ~/dotfile/.git-prompt.sh ~/.git-prompt.sh
ln -s ~/dotfile/.git-completion.bash ~/.git-completiom.bash

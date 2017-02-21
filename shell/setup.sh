#! /bin/sh

echo 'start shell.'

# check device from args
if [ "$1" = "" ]; then
  echo 'set device args' 1>&2
  exit 1
elif [ "$1" != 'mac' -a "$1" != 'default' ]; then
  echo 'args is mac or default' 1>&2
  exit 1
fi
device=$1

#vim setup

##check directory and move directory
echo 'check .vim directory'
if [ -e ~/.vim/bundle ]; then
  echo 'exist .vim directory'
else
  mkdir -p ~/.vim/bundle
fi

echo 'check NeoBundle'
##NeoBundle installi
if [ -e ~/.vim/bundle/neobundle.vim ]; then
  echo 'exist NeoBundle'
else
  echo 'start NeoBundle install'
  cd ~/.vim/bundle
  git clone git://github.com/Shougo/neobundle.vim
  echo 'completion NeoBundle install'
fi

#set symbolic link
echo 'set symbolic link'
cd ~

## check file and symbolic link to remove
for file in ".vimrc" ".bashrc" ".git-prompt.sh" ".git-completion.bash"
do
  if [ -f ~/$file ]; then
    rm ~/$file
  elif [ -L ~/$file ]; then
    unlink ~/$file
  fi
done

if [ "$device" = "mac" ]; then
  ln -s ~/dotfiles/.bashrc_mac ~/.bashrc
elif [ "$device" = "default" ]; then
  ln -s ~/dotfiles/.bashrc_default ~/.bashrc
fi
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.git-prompt.sh ~/.git-prompt.sh
ln -s ~/dotfiles/.git-completion.bash ~/.git-completion.bash

echo 'completion symbolic link'

echo 'end shell.'

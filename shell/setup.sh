#! /bin/sh

#vim setup

##check directory and move directory
echo 'check .vim directory'
if [ -e ~/.vim/bundle ]; then
  echo 'exit .vim directory'
else
  mkdir -p ~/.vim/bundle
fi

echo 'check NeoBundle'
##NeoBundle installi
if [ -f ~/.vim/bundle/neoBundle.vim ]; then
  echo 'exit NeoBundle'
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

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.git-prompt.sh ~/.git-prompt.sh
ln -s ~/dotfiles/.git-completion.bash ~/.git-completion.bash

echo 'completion symbolic link'
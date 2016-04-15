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

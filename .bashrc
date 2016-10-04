# .bashrc

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
fi

source $HOME/.git-prompt.sh
source $HOME/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

#プロンプトの設定
#PS1='[\[\033[32m\]andsf@mac\[\033[0m\]][\[\033[33m\]\w\[\033[0m\]]\[\033[36m\]$(__git_ps1)\[\033[0m\]\n >>> '

function length()
{
  echo -n ${#1}
}

function init-prompt-git-branch()
{
  git symbolic-ref HEAD 2>/dev/null >/dev/null &&
  echo "($(git symbolic-ref HEAD 2>/dev/null | sed 's/^refs\/heads\///'))"
}

if which git 2>/dev/null >/dev/null
then
  export PS1_GIT_BRANCH='\[\e[$[COLUMNS]D\]\[\e[1;31m\]\[\e[$[COLUMNS-$(length $(init-prompt-git-branch))]C\]$(init-prompt-git-branch)\[\e[$[COLUMNS]D\]\[\e[0m\]'
else
  export PS1_GIT_BRANCH=
fi
export PS1="\[\e[32;1m\]\u@\H \[\e[33;1m\]\w $PS1_GIT_BRANCH\n >>> "

#コマンドエイリアス
alias ls='ls -G'
alias ll='ls -l'

#ディレクトリ色分け
export LSCOLORS=gxfxcxdxbxegedabagacad

#php70のパス設定
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

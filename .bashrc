# .bashrc

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
fi

source $HOME/.git-prompt.sh
source $HOME/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

#プロンプトの設定
#PS1='[\[\033[32m\]andsf@mac\[\033[0m\]][\[\033[33m\]\w\[\033[0m\]]\[\033[36m\]$(__git_ps1)\[\033[0m\]\n >>> '

function check_shell {
  if [ $? -eq 0 -o $? -eq 148 ]; then
    face="\e[32m(*'-') < "
  else
    face="\e[34m(*._.) < "
  fi
  echo -e "$(face)\e[m"
}
PS1='\[\033[36m\]$(__git_ps1)\[\033[0m\] \[\033[33m\]\W\[\033[0m\] $(check_shell)'

#コマンドエイリアス
alias ls='ls -G'
alias ll='ls -l'

#ディレクトリ色分け
export LSCOLORS=gxfxcxdxbxegedabagacad

#php70のパス設定
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

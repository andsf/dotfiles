# .bashrc

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

source $HOME/.git-prompt.sh
source $HOME/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

#プロンプトの設定
PS1='[\[\033[32m\]andsf@mac\[\033[0m\]][\[\033[33m\]\w\[\033[0m\]]\[\033[36m\]$(__git_ps1)\[\033[0m\]\n\$'

#コマンドエイリアス
alias ls='ls -G --color'
alias ll='ls -l --color'
alias grep='grep --color'

#ource global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

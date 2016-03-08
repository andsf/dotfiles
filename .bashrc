# .bashrc

source $HOME/.git-prompt.sh
source $HOME/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

#プロンプトの設定
PS1='[\[\033[32m\]andsf@mac\[\033[0m\]][\[\033[33m\]\w\[\033[0m\]]\[\033[36m\]$(__git_ps1)\[\033[0m\]\n\$'

#コマンドエイリアス
alias ls='ls -G'
alias ll='ls -la'
alias grep='grep'

#ディレクトリ色分け
export LSCOLORS=gxfxcxdxbxegedabagacad

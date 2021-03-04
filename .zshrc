export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bullet-train"

plugins=(git)
plugins=(zshnotes)
plugins=(you-should-use $plugins)
plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls="ls -ltra"

function build() 
{
    ssh-agent zsh
    ssh-add -t 36000 $HOME/.ssh/id_rsa
    cd $HOME/buildout-saar
    . bin/activate
}

# fuzzy kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

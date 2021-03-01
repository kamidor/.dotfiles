export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git)
plugins=(zshnotes)
plugins=(you-should-use $plugins)

source $ZSH/oh-my-zsh.sh

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias soundcore="echo -E 'connect 08:EB:ED:5B:D7:84' | bluetoothctl"
alias ls="ls -ltrs"
alias ytaudio="youtube-dl -f bestaudio --download-archive $HOME/.config/downloaded.txt"

function build() 
{
    cd $HOME/buildout/buildout-saar
    . bin/activate
    ssh-add -t 36000 $HOME/.ssh/id_rsa
    clear
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

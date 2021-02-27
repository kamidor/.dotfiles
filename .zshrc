export ZSH="/home/client/.oh-my-zsh"
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
    . /bin/activate
}
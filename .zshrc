export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bullet-train"

plugins=(git)
plugins=(zshnotes)
plugins=(you-should-use $plugins)
plugins=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

BULLETTRAIN_PROMPT_ORDER=(
  git
  context
  dir
  time
)

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

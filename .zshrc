export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bullet-train"

plugins=(git)
plugins=(zshnotes)
plugins=(you-should-use $plugins)
plugins=(zsh-syntax-highlighting)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $ZSH/oh-my-zsh.sh

BULLETTRAIN_PROMPT_ORDER=(
  git
  context
  dir
  time
)

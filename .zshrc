export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bullet-train"

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history # share history between different instances of the shell
setopt inc_append_history
setopt hist_reduce_blanks

plugins=(git
zshnotes
zsh-autosuggestions
zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5fff00,bg=cyan,bold,underline"

BULLETTRAIN_PROMPT_ORDER=(
  git
  context
  dir
  time
)

zstyle -e ':completion:*:hosts' hosts 'reply=(
  ${=${=${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) 2>/dev/null)"}%%[#| ]*}//\]:[0-9]*/ }//,/ }//\[/ }
        ${=${(f)"$(cat /etc/hosts(|)(N) <<(ypcat hosts 2>/dev/null))"}%%\#*}
                    ${=${${${${(@M)${(f)"$(cat ~/.ssh/config 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
                                        ${=${${${${(@M)${(f)"$(cat ~/.ssh/config.d/* 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
                                                                     ${=${${${${(@M)${(f)"$(cat ~/.ssh/config.d.bernhard/* 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
                                                                                                          )'
source $ZSH/oh-my-zsh.sh
bindkey -v
bindkey '^e' edit-command-line
bindkey '^ ' autosuggest-execute

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

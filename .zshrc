export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

ZSH_THEME="bullet-train"

HISTSIZE=100000
SAVEHIST=100000

plugins=(git
zshnotes
you-should-use $plugins
zsh-autosuggestions
zsh-syntax-highlighting
)

BULLETTRAIN_PROMPT_ORDER=(
  git
  context
  dir
  time
)

bindkey -v
bindkey '^e' edit-command-line
bindkey '^ ' autosuggest-execute

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5fff00,bg=cyan,bold,underline"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

zstyle -e ':completion:*:hosts' hosts 'reply=(
  ${=${=${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) 2>/dev/null)"}%%[#| ]*}//\]:[0-9]*/ }//,/ }//\[/ }
        ${=${(f)"$(cat /etc/hosts(|)(N) <<(ypcat hosts 2>/dev/null))"}%%\#*}
                    ${=${${${${(@M)${(f)"$(cat ~/.ssh/config 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
                                        ${=${${${${(@M)${(f)"$(cat ~/.ssh/config.d/* 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
                                                                     ${=${${${${(@M)${(f)"$(cat ~/.ssh/config.d.bernhard/* 2>/dev/null)"}:#Host *}#Host }:#*\**}:#*\?*}}
                                                                                                          )'

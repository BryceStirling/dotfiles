# Created by newuser for 5.9
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
#PROMPT='┌\e[0;32m\u@\h\e[m:\e[0;34m\w\e[m\n└$ '
#PROMPT='%F{green}%e%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
bindkey -v
KEYTIMEOUT=1

function zle-line-init zle-keymap-select {
    case ${KEYMAP} in
        (vicmd)      PROMPT=$'%F{white}╭%F{green}%n@%m%F{white}:%F{blue}%~%F{red}[N]
%F{white}╰$ ' ;;
        (main|viins) PROMPT=$'╭%F{green}%n@%m%F{white}:%F{blue}%~ 
%F{white}╰$ ' ;;
        (*)          PROMPT=$'╭%F{green}%n@%m%F{white}:%F{blue}%~ 
%F{white}╰$ ' ;;
    esac
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

setopt hist_ignore_all_dups
alias ls='exa'
alias grep='grep --color=auto'
alias rm='rm -fv'
alias mv='mv -i'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

source /home/bryce/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

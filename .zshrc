# Created by newuser for 5.9
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
#PROMPT='┌\e[0;32m\u@\h\e[m:\e[0;34m\w\e[m\n└$ '
#PROMPT='%F{green}%e%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
PS1='╭%F{green}%n@%m%F{white}:%F{blue}%~
%F{white}╰$ '
setopt hist_ignore_all_dups
alias ls='exa'
alias grep='grep --color=auto'
alias rm='rm -fv'
alias mv='mv -i'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
#for some reason I have to source zsh vi mode plugin twice or it uses the defaults for that
source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh


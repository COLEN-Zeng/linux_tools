# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
# 也可能在/etc/bash.bashrc
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export HISTTIMEFORMAT="%d/%m/%y %T "

export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

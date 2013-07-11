autoload -U compinit
compinit

export LANG=ja_JP.UTF-8

PROMPT="%m:%~ > "

HISTFILE=~/.zsh_history
HISTSIZE=1000000000
SAVEHIST=1000000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

bindkey -e
bindkey "^?" backward-delete-char
bindkey "^[[3~" backward-delete-char

setopt list_packed
setopt auto_pushd
setopt auto_cd
setopt auto_list
setopt extended_glob

PATH=/opt/local/bin:/opt/local/sbin/:$PATH
PATH=/opt/local/lib/postgresql83/bin:$PATH
PATH=/opt/instantclient_10_2:$PATH
PATH=$PATH:/var/lib/gems/1.8/bin

export EDITOR=/usr/bin/vim
export PAGER="/usr/bin/less -R"

export MANPATH=/opt/local/man:$MANPATH

export LD_LIBRARY_PATH=/opt/instantclient_10_2
export NLS_LANG=Japanese_Japan.UTF8

alias ls='/bin/ls -F --color'
alias ll='/bin/ls -l --color'
alias lv='/usr/bin/less -R'
alias tmux='tmux -2'
alias less='/usr/bin/less -R'

if [ -d $HOME/opt ]; then
  for dir in $HOME/opt/*
  do
    if [ -d $dir/bin ]; then
      PATH=$dir/bin:$PATH
    fi
  done
fi
PATH=$HOME/bin:$PATH

if [ -f ~/.oraclerc ]; then
  source ~/.oraclerc
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

unset RUBYOPT

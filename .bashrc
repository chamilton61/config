
[[ $- != *i* ]] && return

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/config/git-completion.bash

alias ls='ls -G'
alias so='source'
alias ns='notify-send'
alias gs='git status'
__git_complete gs _git_status
alias gb='git branch'
__git_complete gb _git_branch
alias gp='git branch ; git push'
__git_complete gp _git_push
alias go='git checkout'
__git_complete go _git_checkout
alias gc='git commit'
__git_complete gc _git_commit
alias gh='fshow'
alias dt='git difftool -y'
__git_complete dt _git_difftool
alias dts='git difftool -y --staged'
__git_complete dts _git_difftool
alias ga='git add'
__git_complete ga _git_add
alias gu='git pull'
__git_complete gu _git_pull

alias gclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

export PATH="$PATH: $HOME/.rvm/bin"

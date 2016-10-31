
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



export HR_EMAIL='chamilton@raybeam.com'
export MAIL_DOMAIN='raybeam.com'
export MAIL_USERNAME='hr@raybeam.com'
export MAIL_PASSWORD='rayB3@mhr'

export CLIENT_ID=439096052696-l55dmh6qmrm6j0dbn0non9g198ui1hun.apps.googleusercontent.com
export CLIENT_SECRET=CmY3y4dPBE4tqkFhmZx_6Lqm
export PATH="$PATH: $HOME/.rvm/bin"

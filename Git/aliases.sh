#!/bin/bash

# GIT ALIASES
# ===========

# Status and Information
alias        gs='git status'
alias       gla='git log'
alias        gl='git log --oneline'
           # gl="git log --graph --pretty=format:'%C(red)%h - %Creset%s'"  ## https://coderwall.com/p/euwpig/a-better-git-log

# Staging and Commiting
alias        gc='git commit -m'
alias        ga='git add -A'
alias       gac='git add -A && git commit -m'
alias       guc='git add -u && git commit -m'

# Pushing, Pulling and Deploying
alias        gp='git push'
alias     gpull='git pull origin'
alias     gpdep='gp && cap production deploy'
alias  gpdeploy='gp && cap production deploy'

# Others
alias  gitcount='git rev-list HEAD --count'
alias gitsearch='gla -p -S' 
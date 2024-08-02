### fix history ###
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
### fix history ###
export EDITOR=vim
alias vz='vim ~/.zshrc'
alias va='vim ~/.oh-my-zsh/custom/aliases.zsh'
alias sz='exec zsh'
alias vv='vim ~/.vimrc'
alias ll='ls -alh'
export CLICOLOR=1
alias grep='grep --color'
alias json=prettyjson
# git aliase
alias gcom='git commit -m'
alias gwip="git commit -m 'wip'"
alias gamend='git commit --amend --no-edit'
alias gm='git checkout master'
alias gpb='git checkout -'
alias gs='git show'
alias gt='git status'
alias gd='git diff'
alias gdc='git diff --cache'
alias gb='git branch --sort=-committerdate'
alias gb='git for-each-ref --sort=-committerdate refs/heads --format="%(authordate:short) %(color:red)%(objectname:short) %(color:yellow)%(refname:short)%(color:reset) (%(color:green)%(committerdate:relative)%(color:reset))"'



alias tmn='tmux new -s '
alias tma='tmux attach -t '
function gl() {
   if [[ ! "$1" == "" ]]
  then
        git log -n $1
  else
        git log -n 1
  fi
}

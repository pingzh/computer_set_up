UBUNTU=192.168.0.111
alias dev="ssh ping@$UBUNTU"
# start shared settings
# iTerm2 title
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# alias
alias m='mvim '
alias ds='cd ~/Desktop'
alias bp='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias vv='vim ~/.vimrc'
alias ll='ls -alh'
export CLICOLOR=1
alias grep='grep --color'
alias json=prettyjson

# git aliase
alias gwip="git add . && git commit -m 'wip'"
alias gcom='git commit -m'
alias gadd='git add .'
alias gamend='git commit --amend --no-edit'
alias gl='git log -n '
alias gm='git checkout master'
alias gpb='git checkout -'
alias gs='git show'
alias gt='git status'
alias gd='git diff'
alias gdc='git diff --cache'
alias gb='git branch'

# Added by git-aware-prompt https://github.com/jimeh/git-aware-prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
GVM='$(gvm-prompt "(%s)")'
export PS1="\w\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] [${GVM}]\\n$ "
# git complete http://code-worrier.com/blog/autocomplete-git/
if [ -f ~/.git-completion.bash ]; then
        . ~/.git-completion.bash
fi

## Iterm shell integration
# https://www.iterm2.com/documentation-shell-integration.html
source ~/.iterm2_shell_integration.`basename $SHELL`
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# application

# tmux
alias tmn='tmux new -s '
alias tma='tmux attach -t '

# aws
source ~/.bash/aws.sh
# end aws

# docker
function docker-ip() {
    docker inspect $1 | grep -w "IPAddress" | awk '{ print $2 }' | head -n 1 | cut -d "," -f1
}

######################################### end start shared settings ###################################################

alias jdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7); java -version'
alias jdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version'
alias tag='ctags -R -f ./.git/tags .'

# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# end rbenv

alias ios='cd /Users/Ping/Documents/startup/ios_app/Fusionyo'
alias startup=' cd ~/Documents/startup/your_kitchen'
alias lv='cd ~/Documents/ruby/leetcodevideo/leetcodevideo'
alias v2='cd /Users/Ping/Documents/startup/ios_app/FusionYo_V2/Fusion'
alias tb='cd /Users/Ping/Documents/startup/textbook_backend'

## nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


# added by pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/Ping/Desktop/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/Ping/Desktop/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/Ping/Desktop/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/Ping/Desktop/google-cloud-sdk/completion.bash.inc'
fi
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:~/bin"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export JAVA_HOME=$(/usr/libexec/java_home)
export S=/Users/Ping/Documents/quantative/xmen/sigma
export L=/Users/Ping/Documents/quantative/xmen/lambda

eval "$(thefuck --alias)"

export AIRFLOW_HOME=~/airflow


# added by Anaconda2 4.4.0 installer
export PATH="/anaconda/bin:$PATH"

alias disk="find . -maxdepth 1 -type d -mindepth 1 -exec du -hs {} \;"
alias psql='psql ping'


if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark/2.2.0/libexec/"
  export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$PYTHONPATH
  export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
fi

alias quant="source activate quant"

export PATH=$PATH:/usr/local/opt/go/libexec/bin

[[ -s "/Users/Ping/.gvm/scripts/gvm" ]] && source "/Users/Ping/.gvm/scripts/gvm"


 MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"


### fix tmux history ###
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
### fix history ###




fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

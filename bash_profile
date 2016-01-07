export PATH="$HOME/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export CATALINA_HOME="/usr/local/Cellar/tomcat/8.0.23/libexec"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
#export JAVA_HOME=$(/usr/libexec/java_home)
#export JUNIT_HOME=/Users/pzhang/JUNIT
#export CLASSPATH=$CLASSPATH:$JUNIT_HOME/junit-4.10.jar
#git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# mvn autocomplete
if [ -f ~/.maven-completion.bash ]; then
  . ~/.maven-completion.bash
fi

# set iterm tab title
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'


#prompt shows git branch and git dirty
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
# export PS1="@\W\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$"
export PS1="\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n-> "

#alias

# ls
alias lsl='ls -alhGF'
export LSCOLORS=ExFxBxDxCxegedabagacad
alias m='mvim'

# git
alias gadd="git add ."
alias gwip="git add . && git commit -m 'wip'"
alias gcom='git commit -m'
alias gamend='git commit --amend --no-edit'
alias gcomall='git add . && git commit -m '
alias gl='git log'
alias gm='git checkout master'
alias gs='git show'
alias gt='git status'
alias gd='git diff'
alias gdc='git diff --cache'
alias gb='git branch'
alias gp='git pull'
alias gcb='git checkout -b'
alias gg='git g'
alias gpb='git co -'

alias bp='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias vv='vim ~/.vimrc'
alias ds='cd ~/Desktop'

alias jdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7); java -version'
alias jdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version'
alias grep='grep --color'
alias tag='ctags -R -f ./.git/tags .'

## Groupon Specific
alias sr='cd /Users/pzhang/Documents/Groupon/script_runs'
alias gcl='cd /Users/pzhang/Documents/Groupon/groupon-config-local'
alias ko='cd ~/Desktop/koans'
alias mt='cd ~/Desktop/Mobile-training'
alias us='cd ~/Documents/Groupon/users-service'
alias us2='cd ~/Documents/Groupon/users-service2'
alias uslm='cd ~/Documents/Groupon/users-service-local-messagebus'
alias bsw='cd /Users/pzhang/Documents/Groupon/backend-service-webapp'
alias bi='cd /Users/pzhang/Documents/Groupon/backoffice-api'
alias usit='cd ~/Documents/Groupon/users-service-integration-tests'
alias usrc='cd ~/Documents/Groupon/users-service-ruby-client'
alias wiki='cd ~/Documents/Groupon/users-service.wiki'
alias auth='cd ~/Documents/Groupon/authentication-core'
alias cds='cd ~/Documents/Groupon/consumer-data-service'
alias uds='cd ~/Documents/Groupon/user-data-sync'
alias usc='cd ~/Documents/Groupon/users-service-config'
alias oc='cd ~/Documents/Groupon/ops-config'
alias usd='cd ~/Documents/Groupon/users-service-deploy'
alias clc='cd ~/Documents/Groupon/client-library-core'
alias gvm='cd ~/grouponVM/sourceChunks/packagable'
alias sdr='cd ~/Documents/Groupon/sdr'
alias psq='psql -U postgres -d citydeal_development'
alias dm='cd /Users/pzhang/Documents/Groupon/doorman'
alias ss='cd /Users/pzhang/Documents/Groupon/splunk_searches'
alias p='script/pry'



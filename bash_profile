UBUNTU=192.168.0.13
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
export PS1="\w\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\\n$ "
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
complete -C aws_completer aws
function hostname_from_instance() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].PublicDnsName' | tr -d '"')
}

function ip_from_instance() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"instance-state-code\", \"Values\":[\"16\"]}" "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].PublicIpAddress' | tr -d '"')
}

function proxy_ips() {
    for i in $(seq 1 5);
         do echo "{ publicIp: '$(ip_from_instance squid$i)', port: '3128' },"
    done

}

function pip_from_instance() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].PrivateIpAddress' | tr -d '"')
}

function instance_id() {
    echo $(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"$1\"]}" --query='Reservations[0].Instances[0].InstanceId' | tr -d '"')
}

function ssh-aws() {
    ssh -i ~/.ssh/aws.pem ec2-user@$(ip_from_instance "$1")
}
function ssh-aws-ip() {
    ssh -i ~/.ssh/aws.pem ec2-user@$1
}
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

eval "$(thefuck --alias)"

export AIRFLOW_HOME=~/airflow


# added by Anaconda2 4.4.0 installer
export PATH="/anaconda/bin:$PATH"

# start shared settings
# iTerm2 title
export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'

# alias
alias m='mvim '
alias ds='cd ~/Desktop'
alias bp='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias vv='vim ~/.vimrc'
alias tag='ctags -R -f ./.git/tags .'
alias ls='ls -alh'
export CLICOLOR=1
alias jdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7); java -version'
alias jdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version'
alias grep='grep --color'
alias pwc='pwd | pbcopy'

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

######################################### end start shared settings ###################################################

# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# end rbenv

#aws
complete -C aws_completer aws

alias ios='cd /Users/Ping/Documents/startup/ios_app/Fusionyo'
alias startup=' cd ~/Documents/startup/your_kitchen'
alias lv='cd ~/Documents/ruby/leetcodevideo/leetcodevideo'
alias v2='cd /Users/Ping/Documents/startup/ios_app/FusionYo_V2/Fusion'
alias tb='cd /Users/Ping/Documents/startup/textbook_backend'

## nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh


## AWS
alias ssh_aws='ssh -i ~/.ssh/pingster.pem ec2-user@ec2-54-200-129-152.us-west-2.compute.amazonaws.com'

# added by pyenv
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi


# added by Anaconda3 4.0.0 installer
export PATH="/Users/Ping/anaconda/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

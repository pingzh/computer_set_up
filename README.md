# [Ag] (https://github.com/pingzh/ag.vim)
```
brew install ag
```

# [VIM] (https://github.com/pingzh/.vim)

```
git clone https://github.com/pingzh/.vim.git ~/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
#mkdir ~/.vim/colors #if you don't have colors directory
#cp colors/* ~/.vim/colors/
cp vimrc ~/.vimrc
vim +BundleInstall +qall

## Here I personally use "Tomorrow-Night"

--Some solutions to bugs

1. If you see '$' at the end of each line, you just comment row 96, set list

2. If you get an error, like "VIM Error: E474: Invalid argument: listchars=tab:»·,trail:·", then you put the following two lines on the top of vimrc file:

scriptencoding utf-8
set encoding=utf-8
```
# [git-autocomplete] (http://code-worrier.com/blog/autocomplete-git/)

`curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash`
###### Add following block to .bash_profile
```
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
```
# [git-aware-prompt] (https://github.com/pingzh/git-aware-prompt)

```
mkdir ~/.bash
cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git
```
###### Add following block to .bash_profile
```
#prompt shows git branch and git dirty
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
```




# bash_profile
```
#git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
# mvn autocomplete
if [ -f ~/.maven-completion.bash ]; then
  . ~/.maven-completion.bash
fi

# show current folder in iTerm
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# prompt shows git branch and git dirty
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# alias

alias bp='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias ds='cd ~/Desktop'
alias jdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7); java -version'
alias jdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version'
alias grep='grep --color'
# Ctag
alias tag='ctags -R -f ./.git/tags .'
```

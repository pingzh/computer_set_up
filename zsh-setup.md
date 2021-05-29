
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`


### Theme:

https://github.com/romkatv/powerlevel10k#homebrew


```
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

```


`conda config --set changeps1 False`


### Remove all git alias in `~/.oh-my-zsh/plugins/git/git.plugin.zsh`


my alias on `~/.oh-my-zsh/custom/aliases.zsh`

```
# alias
alias m='mvim '
alias ds='cd ~/Desktop'

alias vz='vim ~/.zshrc'
alias sz='exec zsh'

alias vv='vim ~/.vimrc'
alias ll='ls -alh'
export CLICOLOR=1
alias grep='grep --color'
alias json=prettyjson

# git aliase
alias gcom='git commit -m'
alias gamend='git commit --amend --no-edit'
alias gl='git log -n '
alias gm='git checkout master'
alias gpb='git checkout -'
alias gs='git show'
alias gt='git status'
alias gd='git diff'
alias gdc='git diff --cache'
alias gb='git branch'

alias tmn='tmux new -s '
alias tma='tmux attach -t '

alias disk="find . -maxdepth 1 -type d -mindepth 1 -exec du -hs {} \;"

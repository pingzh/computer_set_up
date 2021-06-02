
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`


### Theme:

https://github.com/romkatv/powerlevel10k#homebrew


```
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

```

## colors
`sudo gem install colorls`

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# 
# iTerm --> In the right part -> text tab / font / click on the change button and select your font (here: Hack Nerd Font)
# list select Solarized Dark theme and click on the default button to set it by default (bottom left)
```



### Remove all git alias in `~/.oh-my-zsh/plugins/git/git.plugin.zsh`

## show full length of git branch

https://github.com/romkatv/powerlevel10k/issues/419

Open `~/.p10k.zsh` and find `(( $#where > 32 )) && where[13,-13]="` comment it

my alias on `~/.oh-my-zsh/custom/aliases.zsh`

```
# alias
alias m='mvim '
alias ds='cd ~/Desktop'

alias vz='vim ~/.zshrc'
alias vz='vim ~/.oh-my-zsh/custom/aliases.zsh'
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

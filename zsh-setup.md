

`conda config --set changeps1 False`


`~/.zshrc`

https://apple.stackexchange.com/questions/234504/zsh-missing-git-icons

```
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  conda         # conda virtualenv section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  gradle        # Gradle section
  maven         # Maven section
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=0
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_GIT_STATUS_UNTRACKED=*
SPACESHIP_CONDA_PREFIX='('
SPACESHIP_CONDA_SUFFIX=') '
SPACESHIP_CONDA_SYMBOL='('

```

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

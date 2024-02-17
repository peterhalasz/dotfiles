export ZSH="/Users/peter/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias ll='ls -lah'

alias gb='git branch'
alias gs='git status -sb'
alias gd='git diff'

cat ~/turtle

export PATH="$PATH:/Users/peter/.cargo/bin:/Users/peter/go/bin"

zstyle ':completion:*' rehash true
zstyle ':completion:*' use-cache on # Turn on caching to speed up Bazel completions
zstyle ':completion:*' cache-path $HOME/.zsh/cache
 
 fpath=($HOME/.zsh/completions/ $fpath)

alias vim="/Users/peter/.local/bin/lvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

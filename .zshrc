export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# NVM
export NVM_DIR="$HOME/.nvm"
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  alias nvm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && nvm'
  alias node='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && node'
  alias npm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && npm'
fi


# Pyenv
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# GCloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Direnv
eval "$(direnv hook zsh)"

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Custom aliases
alias ls='exa'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Spaceship
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#  node          # Node.js section
  venv          # virtualenv section
  pyenv         # Pyenv section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  char          # Prompt character
)

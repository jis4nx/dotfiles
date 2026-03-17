export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(git)

SPACESHIP_PYTHON_SHOW=true
SPACESHIP_PYTHON_SYMBOL="🐍·"

SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  host
  git
  docker
  golang
  python
  node
)

source $ZSH/oh-my-zsh.sh

PGADMIN_DEFAULT_EMAIL="admin@nasa.gov"
PGADMIN_DEFAULT_PASSWORD="root"

# bun completions
[ -s "/home/thinker/.bun/_bun" ] && source "/home/thinker/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

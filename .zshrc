export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh

SPACESHIP_PYTHON_SHOW=true
SPACESHIP_PYTHON_SYMBOL=🐍·


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



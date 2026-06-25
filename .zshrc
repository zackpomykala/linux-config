# Stop for non-interactive shells
[[ ! -o interactive ]] && return

# System info banner
if command -v fastfetch >/dev/null 2>&1; then
  fastfetch
fi

# Path to Oh My Zsh
export ZSH="${ZSH:-$HOME/.oh-my-zsh}"
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Theme
ZSH_THEME="pi"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=10000
SAVEHIST=20000
HISTCONTROL=ignoredups:erasedups

# Plugins
plugins=(
  git
  zsh-autosuggestions
  sudo
  colored-man-pages
  cp
  zsh-bat
)

# Load Oh My Zsh
if [[ -r "$ZSH/oh-my-zsh.sh" ]]; then
  source "$ZSH/oh-my-zsh.sh"
fi

if [[ -r "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Aliases
alias ll="ls -alrh --color=auto"
alias lt="ls -alrht --color=auto"
alias vim="nvim"
alias py="python3.14"
alias gc="git commit -m"
alias ga="git add ."
alias gs="git status"
alias gp="git push"
alias suv="sudo $HOME/.local/bin/uv"
alias sinfoa='sinfo -N -o "%.25N %.15O %.15C %.15e %.10t %.10m %.15P %.25G %.35E"'
alias dmesgnv='dmesg -HT | grep -iE "nvrm|nvidia|gpu|pcie"'
alias reload="source ~/.zshrc"

# Shell functinons
function cl() {
  cd "$1" && ll
}

function mkdircd() {
  mkdir "$1" && cd "$1"
}

if [[ -r "$HOME/.local/bin/env" ]]; then
  source "$HOME/.local/bin/env"
fi

if [[ -r "$HOME/.opam/opam-init/init.zsh" ]]; then
  source "$HOME/.opam/opam-init/init.zsh" > /dev/null 2> /dev/null
fi

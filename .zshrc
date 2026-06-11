# Stop for non-interactive shells
[[ ! -o interactive ]] && return

# Optional system info banner
if command -v fastfetch >/dev/null 2>&1; then
  fastfetch
fi

# Path to Oh My Zsh
export ZSH="${ZSH:-$HOME/.oh-my-zsh}"

# Use an installed theme
# Your current "pi" theme is not installed on this machine.
ZSH_THEME="pi"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

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

# zsh-syntax-highlighting should be sourced after Oh My Zsh.
# Use $HOME instead of a hard-coded username.
if [[ -r "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Aliases
alias ll="ls -alrht --color=auto"
alias vim="nvim"
alias py="python3.14"

# Optional local env file
if [[ -r "$HOME/.local/bin/env" ]]; then
  source "$HOME/.local/bin/env"
fi

# Optional opam configuration
if [[ -r "$HOME/.opam/opam-init/init.zsh" ]]; then
  source "$HOME/.opam/opam-init/init.zsh" > /dev/null 2> /dev/null
fi

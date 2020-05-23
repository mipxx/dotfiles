autoload -Uz compinit
compinit -u

if command -v kitty >/dev/null 2>&1; then
  # Completion for kitty
  kitty + complete setup zsh | source /dev/stdin
fi

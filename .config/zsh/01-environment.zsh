export EDITOR=vim
export VISUAL=vim

export LANG=en_DK.UTF-8

export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_CACHE_HOME=~/.cache

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export KDEHOME="$XDG_CONFIG_HOME"/kde
export WGETRC="$XDG_CONFIG_HOME"/wgetrc

# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

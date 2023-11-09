
export GOPATH="$HOME/go"

# Powerline bits
function powerline_precmd() {
    PS1="$($GOPATH/bin/powerline-go -max-width 50 -hostname-only-if-ssh -error $? -jobs ${${(%):%j}:-0})"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    install_powerline_precmd
fi



# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gozilla"
zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 30
plugins=(git)

source $ZSH/oh-my-zsh.sh
if [ -r ~/.zshrc.path ]; then
    source ~/.zshrc.path
fi

# Needed for git to be able to read GPG key
export GPG_TTY=$(tty)

# Needed for tmuxinator
export EDITOR='vim'

export PATH=/opt/homebrew/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


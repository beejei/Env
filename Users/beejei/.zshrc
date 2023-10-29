# for intel x86_64 brew
export PATH=$HOME/bin:/usr/local/bin:$PATH
alias axbrew='arch -x86_64 /usr/local/homebrew/bin/brew'

# for SOPS
export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export NODE_ENV='development'
export NODE_OPTIONS='--max-old-space-size=20192'

# pyenv 
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH=$PATH:/Applications/Araxis\ Merge.app/Contents/Utilities
export PATH="$HOME/logcli/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# GNU CLI
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
unsetopt nomatch


#set history size
export HISTSIZE=100000
#save history after logout
export SAVEHIST=100000
#history file
export HISTFILE=~/.zsh_history
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY

# for Vault Client
export VAULT_ADDR='https://vault.my.internal'
export VAULT_CACERT='/Users/beejei/internal.crt'
export VAULT_TOKEN='<my hashicorp vault token>'
export VAULT_FORMAT='yaml'

# Android development
export ANDROID_HOME="$HOME/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Android/sdk"
export PATH=$PATH:$ANDROID_SDK_ROOT/tools; PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# for docker
export DOCKER_DEFAULT_PLATFORM=linux/amd64
source /Users/beejei/.docker/init-zsh.sh || true # Added by Docker Desktop


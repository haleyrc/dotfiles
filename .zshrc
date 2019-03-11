# Path to your oh-my-zsh installation.
export ZSH=/home/ryan/.oh-my-zsh

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export SSH_KEY_PATH="~/.ssh/rsa_id"

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export ANDROID_HOME=$HOME/Android/Sdk
export CLASSPATH=/usr/share/java/mysql-connector-java.jar:.

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export RUSTPATH=$HOME/.cargo/bin
export PATH=/opt/gradle/gradle-5.0/bin:$HOME/.local/bin:$RUSTPATH:/usr/local/flutter/bin:/home/ryan/Android/Sdk/platform-tools:/usr/local/go/bin:/usr/local/android-studio/bin:/usr/local/node/bin:$GOBIN:$HOME/bin:$PATH

export CGO_ENABLED=0
export DATASTORE_EMULATOR_HOST=0.0.0.0:8582
 
# Wrap sqlplus with rlwrap to edit prior lines with the
# up, down, left and right keys.
sqlplus()
{
  if [ "$RLWRAP" = "0" ]; then
    sqlplus "$@"
  else
    rlwrap sqlplus "$@"
  fi
}
 
# Set the bindkey.
bindkey -v
bindkey "^R" history-incremental-search-backward
export EDITOR="vim"
 
# history stuff
HISTFILE=~/.zsh-histfile
HISTSIZE=2000

# Set vi as a command line editor.
set -o vi

# Setup docker-compose command completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

alias ls="ls -lh --color"
alias tmux="TERM=xterm-256color tmux"
alias gp="git branch | grep \* | awk -e '{print $2}' | git push --set-upstream origin -"
alias lt="git tag --sort=-v:refname | head -n 1"
alias todo="grep -iIR --exclude-dir={vendor,node_modules,build} TODO --"
alias gg="gitgoing"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/ryan/google-cloud-sdk/path.zsh.inc' ]; then source '/home/ryan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/home/ryan/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/ryan/google-cloud-sdk/completion.zsh.inc'; fi

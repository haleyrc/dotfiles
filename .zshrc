# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/ryan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set the JAVA_HOME path.
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.144-7.b01.fc26.x86_64

export ANDROID_HOME=$HOME/Android/Sdk
 
# Set the CLASSPATH path.
export CLASSPATH=/usr/share/java/mysql-connector-java.jar:.

export GOPATH=$HOME/dev
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin:$GOBIN:$HOME/bin

export CGO_ENABLED=0
export DATASTORE_EMULATOR_HOST=0.0.0.0:8582
 
# User specific aliases and functions
# . /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
 
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ryan/google-cloud-sdk/path.zsh.inc' ]; then source '/home/ryan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ryan/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/ryan/google-cloud-sdk/completion.zsh.inc'; fi

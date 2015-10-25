# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls -lh"
alias gaa="git add ."
alias gcm="git commit -m"
alias gaacm="git add . && git commit -m"
alias gpom="git push origin master"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
# export GOROOT=$HOME/.go
export GOARCH=amd64
export GOOS=linux
export GOPATH=/dropbox/Dropbox/hacking/go
export GOBIN=$GOPATH/bin
export PATH=/home/freak/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/freak/.rvm/bin:$GOBIN
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH

PERL_MB_OPT="--install_base \"/home/freak/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/freak/perl5"; export PERL_MM_OPT;
export PERL5LIB=/home/freak/perl5/lib/perl5:/home/freak/perl5/lib

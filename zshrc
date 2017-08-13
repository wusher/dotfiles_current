# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="mine2"
#ZSH_THEME="nicoulaj"
#ZSH_THEME="kphoen"
ZSH_THEME="pure"
#ZSH_THEME="wedisagree"



# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin"
PATH=$PATH:/usr/local/sbin
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


alias vim='mvim -v'
alias vi='mvim -v'
alias gst='git status --short'
export EDITOR='mvim -v'
alias accounts="cd ~/code/shutterstock-accounts"
alias absinthe="cd ~/code/shutterstock-absinthe"
alias pauth="cd ~/code/perl-shutterstock-auth"
alias nauth="cd ~/code/node-shutterstock-auth"

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
#$(boot2docker shellinit)

PATH=$PATH:$HOME/bin # Add PATH for scripting
PATH=$PATH:/Users/wusher/vertica/bin # Add PATH for scripting
alias rr='rock run '
alias rt='rock test '
alias rruby='rock run ruby '
alias rnode='rock run node '
alias first="cut -f1 -d ' '"
alias second="cut -f2 -d ' '"
alias third="cut -f3 -d ' '"
#alias notes='ack $0 ~/Dropbox/notes'

alias diary='cd ~/Dropbox/notes && vim code_`date +"%Y%m%d"`.md'

notes() { 
  ack $1  '/Users/wusher/Dropbox/notes' | grep -v thredup | grep --color $1
}
ssnotes() { 
  ack $1  '/Users/wusher/Dropbox/notes/ss*.*'
}



alias tedit='vim ~/Dropbox/todo.txt'
alias tview='marked ~/Dropbox/todo.txt'
todos() {
  sed -n '/^---/,$!p' $HOME/Dropbox/todo.txt | grep -v '^$'
}
#todos

function tmatessh() {
  tmate show-m | ack -o 'Remote session: .*' | cut -d' ' -f3,4,5 | pbcopy
}


#eval "$(rbenv init -)"
#
#export NVM_DIR="$HOME/.nvm"
  #. "$(brew --prefix nvm)/nvm.sh"


export GOPATH=$HOME

# needed for docker
function minikubify() { 
  eval $(minikube docker-env)
}


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
#[[ -f /Users/wusher/.nvm/versions/node/v5.11.1/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /Users/wusher/.nvm/versions/node/v5.11.1/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/rock-runtime-ruby22/bin:$PATH"

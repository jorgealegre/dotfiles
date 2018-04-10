# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git grails npm osx pod python sudo tmux vi-mode docker virtualenv)

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

###############################################################################

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename ~/.zshrc

autoload -Uz compinit
compinit
# End of lines added by compinstall

###############################################################################


# GWT
export PATH=/opt/utils/gwt/gwt-2.6.0:$PATH

# MySQL
export PATH=/usr/local/mysql/bin:$PATH

# Sdkman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR=~/.sdkman
[[ -s ~/.sdkman/bin/sdkman-init.sh ]] && source ~/.sdkman/bin/sdkman-init.sh

# Agnoster prompt customization.
prompt_dir() {
  prompt_segment blue black "%."
}
prompt_context(){}
RPROMPT='%*'

# Set VIM as default editor.
export VISUAL=vim
export EDITOR="$VISUAL"

source ~/.aliases

# Detect platform.
platform='unknown'
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    platform='linux'

    DEFAULT_USER='georgealegre'
    
    # Swiftenv
    export SWIFTENV_ROOT="$HOME/.swiftenv"
    export PATH="$SWIFTENV_ROOT/bin:$PATH"
    eval "$(swiftenv init -)"

    # Android
    export ANDROID_HOME=~/Android/Sdk
elif [[ "$OSTYPE" == "darwin"* ]]; then
    platform='macOS'
    DEFAULT_USER='george'

    # Android
    export ANDROID_SDK_ROOT=/Users/george/Work/sgv/android-sdk
    export ANDROID_HOME=ANDROID_SDK_ROOT

    export PATH="/usr/local/opt/llvm/bin:$PATH"
    export PATH="/usr/local/opt/octave/bin:$PATH"
    export PATH="/usr/local/Cellar/gcc@4.9/4.9.4_1/bin/:$PATH"
    export PATH="/usr/local/Cellar/gcc@5/5.5.0_2/bin/:$PATH"
    export PATH="/usr/local/Cellar/gcc@6/6.4.0_2/bin/:$PATH"

    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
    export WORKON_HOME=$HOME/.virtualenvsexport
    PROJECT_HOME=$HOME/Developer
    source /usr/local/bin/virtualenvwrapper.sh
else
    # Unknown.
    platform='UNKNOWN'
fi
echo "Welcome $platform user!"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

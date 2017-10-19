# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/george/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###############################################################################

# Android
export ANDROID_HOME=~/Library/Android/sdk

# Postgres
export PATH=/Library/PostgreSQL/10/bin/:$PATH
alias postgres.server="sudo -u postgres pg_ctl -D /Library/PostgreSQL/10/data"

# Sdkman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/george/.sdkman"
[[ -s "/Users/george/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/george/.sdkman/bin/sdkman-init.sh"

# Git prompt util.
source ~/zsh-git-prompt/zshrc.sh
PROMPT='%.$(git_super_status) $ '

# Set VIM as default editor.
export VISUAL=vim
export EDITOR="$VISUAL"

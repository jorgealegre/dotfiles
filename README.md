# dotfiles
These are my public configuration files for the various tools I use on every computer. Inspired by [this blog post](https://sanctum.geek.nz/arabesque/managing-dot-files-with-git/). Check out the whole blog for more amazing tips about using a CLI properly.

## Instructions:
+ On a new computer, clone this repo to your home directory (consider cloning it into a hidden directory i.e. `git clone https://github.com/georgealegre/dotfiles .dotfiles`).
+ Run the `createLinks.sh` script.
+ List all files in your home directory to verify everything worked.
+ When something is changed, just run `git pull` inside the repository.

## New computer setup
+ Download and install Xcode from Apple's [developer website](https://developer.apple.com/download/all/?q=xcode). Install additional tools when opening for the first time.
+ Download and install [iTerm 2](https://iterm2.com/downloads.html).
+ Install [Homebrew](https://brew.sh)
+ Update vim and install tmux with `$ brew install vim tmux`.
+ Enable key repeat with `$ defaults write -g ApplePressAndHoldEnabled -bool false`.

## Extra stuff
https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

#!/bin/bash

#Aliases for common directories
alias home="cd ~"
alias root="cd /"
alias dcs="ssh dcs -X"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias vault="cd ~/Desktop/The\ Vault"

#Aliases for ls
alias ll='ls -alFh'
alias la='ls -A'
alias lt='ls --human-readable --size -1 -S --classify'
alias l='ls -CF'

# Use vim instead of vi
alias vi="vim"
# Always run du in human readable mode
alias du="du -h"
# Use xdg-open instead of open
alias open="xdg-open"
# Print the shell level
alias shlvl='echo $SHLVL'
# Render images in the terminal
alias icat="kitty +kitten icat"
# Pipe to clipboard
alias clipboard="kitty +kitten clipboard"
#Alias to run an interactive Haskell shell via stack, to avoid multiple GHC installs, without loading any packages
alias ghci="stack exec -- ghci"
# Alias listing mounted drives
alias lsmnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
# Alias large file copy with progress bar
alias cpv='rsync -ah --info=progress2'

# Function to the current directory to a target when it contains many small files
#   usage: cpwd TARGET_DIRECTORY
cpwd() { mkdir -p "$1"; tar cf - . | pv | (cd "$1"; tar xvf -); }
alias cpwd='cpwd '
# Show a photo from the webcam in the terminal
alias webcam="if [ -e '/dev/video0' ]; then; ffmpeg -y -f video4linux2 -i /dev/video0 -ss 0:0:1 -vframes 1 /tmp/webcam.jpg 2>/dev/null && icat /tmp/webcam.jpg && rm /tmp/webcam.jpg; else; echo 'No webcam connected!' >&2 ; fi"

# Alias xournalpp
alias xournal="xournalpp"

# Helpful tmux commands
alias tms='tmux new -As0'
alias tmd='tmux detach'
alias tmls='tmux ls'

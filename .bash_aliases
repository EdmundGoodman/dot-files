#!/bin/bash


#Aliases for common directories
alias home="cd ~"
alias root="cd /"
alias dcs="ssh dcs -X"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

#Aliases for ls
alias ll='ls -alFh'
alias la='ls -A'
alias lt='ls --human-readable --size -1 -S --classify'
alias l='ls -CF'

# Use vim instead of vi
alias vi="vim"
# Use pip3 instead of pip
alias pip="pip3"
#Alias to run an interactive Haskell shell via stack, to avoid multiple GHC installs, without loading any packages
alias ghci="stack exec -- ghci"
# Use xdg-open instead of open
alias open="xdg-open"

# Print the shell level
alias shlvl='echo $SHLVL'
# Render images in the terminal
alias icat="kitty +kitten icat"
# Alias listing mounted drives
alias lsmnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
# Alias large file copy with progress bar
alias cpv='rsync -ah --info=progress2'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#Open the webcam in icat ~~VLC media player~~
# alias webcam="if [ -e '/dev/video0' ]; then; ffmpeg -f video4linux2 -i /dev/video0 -ss 0:0:1 -vframes 1 -f singlejpeg pipe: 2>/dev/null | icat --stdin=yes; else; echo 'No webcam connected!' >&2 ; fi"


#!/bin/bash


#Aliases for common directories
alias home="cd ~"
alias root="cd /"
alias dcs="ssh dcs -X"
alias web="cd /var/www/devroot"
alias desktop="cd /mnt/c/Users/egood/Desktop"

#Aliases for ls
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

#Alias to run an interactive Haskell shell via stack, to avoid multiple GHC installs, without loading any packages
alias ghci='stack exec -- ghci'

#Alias python3 as python for convenience
alias python="python3"

#Alias to run the command to open the virtual environment with all my python libraries in
alias venvActivate="source /mnt/c/Users/egood/Desktop/projects/programming/env/bin/activate"

#Alias to show the weather
alias weather="printf \"The weather in %s\"; curl wttr.in\?0nqF"
#alias weather="ansiweather -l $(curl -s ipinfo.io/city) -a false | sed 's/^ //g'"

#Alias to discard warnings and simplify call to xournal++
alias xournal="xournalpp 2> /dev/null"

#Alias a wsl tool to open files with their default windows programs to `open`
alias open="wslview"








#Display system information
system() {
    if [ -f ~/.hushlogin ]; then
        for i in /etc/update-motd.d/*; do if [[ "$i" != "/etc/update-motd.d/98-fsck-at-reboot" && "$i" != "/etc/update-motd.d/removed-motd-files" ]]; then $i; fi; done
    fi
    echo Windows Subsystem for Linux:
    wslsys | fold | awk '{ print "  " $0 }'
}

#Fully upgrade all apt installed software, and delete any unnecessary software
#https://askubuntu.com/questions/196768/how-to-install-updates-via-command-line
aptfullupgrade() {
    sudo apt update
    sudo apt upgrade -y
    sudo apt full-upgrade -y
    sudo apt autoremove -y
    sudo apt autoclean -y
}

#Display a hello message 
hello() {
    echo Hello Edmund! #$(whoami)
    echo It is $(date) 
    weather
}

# Greeting message
echo 'Welcome Back Yassine!'
echo ''
echo 'Setting somethings up for you'
echo '…'

# load some settings
source ~/.bashrc

####
# Setting up coloring

export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\[$(tput setaf 4)\]\\$ \u \[$(tput setaf 5)\][\W]\[$(tput setaf 2)\] => \[$(tput sgr0)\]"

####
# Aliases
alias ll='ls -lhtrG'

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
    . ~/.config/exercism/exercism_completion.bash
fi


alias orch='ssh -L 8989:mezzanine:8989 ys177@mezzanine.med.harvard.edu'
alias orch='ssh ys177@orchestra.med.harvard.edu'
alias mez8989='ssh -L 8989:mezzanine:8989 ys177@orchestra.med.harvard.edu'

####
# Setting up PATH

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

####
# Other configs

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# change the send keyboard shortcut in mail to cmd+enter
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"


export GOPATH=/Users/ys/bin/go

. /sw/bin/init.sh

echo ''
bash ./.greeting_message
echo 'All settings are go '
echo ''



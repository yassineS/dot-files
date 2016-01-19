# Path to your oh-my-zsh installation.
export ZSH=/Users/ys/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="bullet-train"
#ZSH_THEME="agnoster"
#ZSH_THEME="cobalt2"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(cp tmux rsync tmuxinator z command-not-found colored-man-pages colorize git python extract aws brew catimg chucknorris cloudapp common-aliases docker fabric git-extras gitfast history sudo pip virtualenv virtualenvwrapper)

# User configuration

export PATH="/opt/local/bin:/opt/local/sbin:/sw/bin:/sw/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Library/TeX/texbin:/Users/ys/Library/Enthought/Canopy_64bit/User/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/Applications/plink:/Users/ys/bin/gsl-1.16:/Users/ys/bin:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Users/ys/Library/Enthought/Canopy_64bit/User/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:/Applications/plink:/Users/ys/bin/gsl-1.16:/Users/ys/bin:/Users/ys/bin/boost_1_59_0:/Users/ys/bin/boost_1_59_0/bin:/Users/ys/bin/boost_1_59_0:/Users/ys/bin/boost_1_59_0/bin.v2:/Users/ys/bin/boost_1_59_0:/Users/ys/bin/boost_1_59_0/bin.v2i:/Users/ys/bin/simlinks:/Users/ys/bin/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Setup default gcc
export CC=/usr/local/bin/gcc-4.2

# Add github ssh key
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github

# Autocomplete for aws-cli
complete -C aws_completer aws

# Load z: jumping around directories
source /Users/ys/bin/github/z/z.sh

# Load thefuck: commands correction
eval "$(thefuck --alias)"

###########
# Aliases #
###########
alias ll='ls -lhtrG'

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
    . ~/.config/exercism/exercism_completion.bash
fi

# Orchestra aliases
alias orch='ssh -L 8989:mezzanine:8989 ys177@mezzanine.med.harvard.edu'
alias orch='ssh ys177@orchestra.med.harvard.edu'
alias mez8989='ssh -L 8989:mezzanine:8989 ys177@orchestra.med.harvard.edu'

# dropbox_uploader cli
alias drop='~/bin/dropbox_cli/dropbox_uploader.sh'

####
# Other configs

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#Setup virtual envwrapper for python in case default doesn't work
VIRTUALENVWRAPPER_PYTHON=/usr/local/Frameworks/Python.framework/Versions/2.7/bin/python2.7
export VIRTUALENVWRAPPER_PYTHON

# needed for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

# change the send keyboard shortcut in mail to cmd+enter
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

# Go lang path
export GOPATH=/Users/ys/bin/go

. /sw/bin/init.sh

# Transfer.sh cloud file transfer: cloud+s3 support
transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }; alias transfer=transfer



# Print quote in cowthink: chuck norris random quotes
chuck_cow

# ~/.bashrc

# Return if not running interactively
[[ $- != *i* ]] && return

# Set vi mode
set -o vi

#### Environment Variables #####################################################

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Directories
export DEV="$HOME/Dev"
export GITUSER="raoulwo"
export REPOS="$HOME/Repos"
export GHREPOS="$REPOS/github.com"
export MYREPOS="$GHREPOS/$GITUSER"
export DOT="$MYREPOS/dot"
export LAB="$MYREPOS/lab"
export NOTES="$MYREPOS/notes"
export SCRIPTS="$DOT/scripts"
export ZETTEL="$HOME/Zettel"

#### Path Configuration ########################################################

# Append the $SCRIPTS directory
PATH="${PATH}:$SCRIPTS"

#### Aliases ###################################################################

# ls
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'

# cd
alias dev='cd $DEV'
alias repos='cd $REPOS'
alias ghrepos='cd $GHREPOS'
alias myrepos='cd $MYREPOS'
alias dot='cd $DOT'
alias lab='cd $LAB'
alias notes='cd $NOTES'
alias scripts='cd $SCRIPTS'
alias zk='cd $ZETTEL'

# clear
alias c='clear'

# edit
alias vi='nvim'
alias todo='nvim ~/.todo.md'

# grep
alias grep='grep --color=auto'

# path
alias path='echo -e "${PATH//:/\\n}"'

#### Prompt ####################################################################

source ~/.git-prompt.sh

PS1='\[\033[0;30m\]╔ \[\033[1;32m\]\u\[\033[0;30m\]@\[\033[1;34m\]\h\[\033[0;30m\]:'\
'\[\033[1;31m\]\W$(__git_ps1 "\[\033[0;30m\](\[\033[1;33m\]%s\[\033[0;30m\])")'\
'\n\[\033[0;30m\]╚ \[\033[1;37m\]\$\[\033[0m\] '


# Environment variables

export ZETTELKASTEN="/Users/raoul/Library/Mobile Documents/iCloud~md~obsidian/Documents/Zettelkasten"

# Prompt

source ~/.git-prompt.sh

PS1='\[\033[0;30m\]╔ \[\033[1;32m\]\u\[\033[0;30m\]@\[\033[1;34m\]\h\[\033[0;30m\]:\[\033[1;31m\]\W'\
'$(__git_ps1 "\[\033[0;30m\](\[\033[1;33m\]%s\[\033[0;30m\])")\n\[\033[0;30m\]╚ \[\033[1;37m\]\$\[\033[0m\] '

# Vi mode
set -o vi

# Aliases

# ls
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'

# cd
alias dev='cd ~/Dev'
alias repos='cd ~/Repos'
alias dot='cd ~/Repos/github.com/raoulwo/dot'
alias lab='cd ~/Repos/github.com/raoulwo/lab'
alias notes='cd ~/Repos/github.com/raoulwo/notes'

# clear
alias c='clear'

# edit
alias vi='nvim'
alias todo='nvim ~/.todo.md'

# grep
alias grep='grep --color=auto'

# path
alias path='echo -e "${PATH//:/\\n}"'


# Add vitrualenvwrapper.
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Set ls to used coloured output via alias.
alias ls="ls --color=auto"

# Yaourt installed package list.
alias plist="yaourt -Qm"
alias p="mpv --ontop --no-border --autofit=384x216 --geometry=99%:2%"
export VISUAL="nano"

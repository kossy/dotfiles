# Add vitrualenvwrapper.
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
source /usr/share/bash-completion/bash_completion

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export VISUAL="nano"

# added by travis gem
[ -f /home/kossy/.travis/travis.sh ] && source /home/kossy/.travis/travis.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
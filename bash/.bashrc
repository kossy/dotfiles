# Add vitrualenvwrapper.
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Set ls to used coloured output via alias.
alias ls="ls --color=auto"

# Yaourt installed package list.
alias plist="yaourt -Qm"
alias p="mpv --ontop --no-border --on-all-workspaces --autofit=384x216 --geometry=99%:2%"
alias vpnr="sudo systemctl restart openvpn-client@Mikasa"
export VISUAL="nano"

# added by travis gem
[ -f /home/kossy/.travis/travis.sh ] && source /home/kossy/.travis/travis.sh

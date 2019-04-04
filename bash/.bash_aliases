# Set ls to used coloured output via alias.
alias ls="ls --color=auto"
alias sudo='sudo '
alias gksu='gksu '

# Yaourt installed package list.
alias plist="yay -Qm"
alias p="mpv --ontop --no-border --on-all-workspaces --autofit=384x216 --geometry=99%:2%"


# Vpn controls
alias vpnr="systemctl restart openvpn-client@kossybox"
alias vpnrestart="systemctl restart openvpn-client@kossybox"

alias vpnstart="systemctl start openvpn-client@kossybox"
alias vpnstatus="systemctl status openvpn-client@kossybox"
alias vpnstop="systemctl stop openvpn-client@kossybox"
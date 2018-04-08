#!/bin/sh
# Script for polybar, shows openvpn-client status.

# Get status of openvpn-client@Mikasa service.
VPN_SERVICE_STATUS=`systemctl status openvpn-client@Mikasa | grep Active: | awk '{ print $2 }'`

# Get status of network by pinging cloudflare dns.
PING_EXIT_STATUS=`ping -c 1 -q -W 1 1.1.1.1 > /dev/null 2>&1 ; echo $?`

# Setup Colours
green=#a6e22e
orange=#f39c12
red=#e74c3c

# See if openvpn-client service is active.
if [[ $VPN_SERVICE_STATUS = 'active' ]]; then
  # openvpn-client service is active.

  if [[ $PING_EXIT_STATUS = '2' ]]; then
    # No network connection, exit status 2 from ping.
    echo %{F$red}''%{F-}

  elif [[ $PING_EXIT_STATUS = '0' ]]; then
    # Network connected, exit status 0 from ping.
    echo %{F$green}''%{F-}
  fi

elif [[ $VPN_SERVICE_STATUS = 'inactive' ]]; then
  # openvpn-client service is inactive, probably due to it being stopped.
  echo %{F$red}''%{F-}

elif [[ $VPN_SERVICE_STATUS = 'failed' ]]; then
  # openvpn-client failed due to error. More than likely a config error.
  echo %{F$red}''%{F-}

else
  # Catch all, just print openvpn-client vpn connection status.
  echo %{F#$orange}''%{F-}
fi

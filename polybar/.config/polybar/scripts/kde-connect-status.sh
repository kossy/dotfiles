#!/bin/bash

# Get output of kdeconnect devices.
STATUS=`kdeconnect-cli -a`

# Setup Colours
green=#a6e22e
orange=#f39c12
red=#e74c3c

# Check if device is found.
if [[ $STATUS = '0 devices found' ]]; then
	# No devices found
  echo %{F$orange}''%{F-}
else
  # Device connected.
	echo %{F$green}''%{F-}
fi

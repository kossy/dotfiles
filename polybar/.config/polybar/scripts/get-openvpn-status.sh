#!/bin/sh

systemctl status openvpn-client@Mikasa | grep Active: | awk '{ print $2 }' 

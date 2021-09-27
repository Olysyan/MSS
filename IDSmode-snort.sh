#!/bin/sh
sudo snort -c /usr/local/etc/snort/snort.lua -R /etc/snort3-community-rules/snort3-community.rules -i `ifconfig | cut -d ' ' -f1| tr ':' '\n' | awk NR==1` -A alert_fast -s 65535 -k none
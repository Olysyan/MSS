#!/bin/sh
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:oisf/suricata-stable
sudo apt-get update
sudo apt-get install suricata
sudo suricata-update
sudo suricata-update update-sources
suricata -V
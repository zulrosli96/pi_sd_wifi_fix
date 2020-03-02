#!/bin/bash
sudo mount -o remount,rw /
ifconfig wlan0 down
sudo apt-get install wireless-tools
cd /lib/firmware/
mkdir brcm
cd brcm
wget --no-check-certificate https://raw.githubusercontent.com/RPi-Distro/firmware-nonfree/master/brcm/brcmfmac43430-sdio.bin
wget --no-check-certificate https://raw.githubusercontent.com/RPi-Distro/firmware-nonfree/master/brcm/brcmfmac43430-sdio.txt
ifconfig wlan0 up

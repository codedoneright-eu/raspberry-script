#!/bin/bash

#Spin down HDD, substitute /dev/sda with your device
#Add additional line for each device you want to spin down
#Requires package hdparm
sudo hdparm -y /dev/sda

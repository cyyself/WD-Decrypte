#!/bin/bash
read -s -p "Enter your WD Drive Password: " wdpassword
python cookpw.py $wdpassword > /tmp/wd-password.bin
sudo sg_raw -s 40 -i /tmp/wd-password.bin $1 c1 e1 00 00 00 00 00 00 28 00
rm /tmp/wd-password.bin

#!/usr/bin/env bash
####Automaticlly created script#####
#NMCLI
###################
#created by:De Grazzia Aviran 
#date:10.3.19
#explanation: 
#
###################
echo "Devices Availble"
nmcli device status |awk '{print $1}' |grep -v lo |grep -vi Device
read -p "choose device you wish to configure " DEVICE
read -p "please type connection profile name " PROFILE
read -p "please specify connection type " TYPE
read -p "please choose ipv4 address with prefix " IPV4
read -p "please specify default gateway " GETWAY
read -p "please specify dns server " DNS
nmcli connection add type $TYPE con-name $PROFILE ifname $DEViCE ipv4.addresses $IPV4 gw4 $GATEWAY
nmcli con-mod $PROFILE ipv4.dns $DNS
echo "configuration done successfuly"
sleep 1
nmcli dev status
   

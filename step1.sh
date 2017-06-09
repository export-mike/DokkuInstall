#!/bin/bash
#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)
#Display existing hostname
echo 'Step 1 of 2 - Setup system hostname';
echo "Existing hostname is $hostn"
newhost=ubuntu
#Ask for new hostname $newhost
echo "Setting new hostname to $newhost"
#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

#display new hostname
echo "New Hostname set to $newhost"

#Press a key to reboot
read -s -n 1 -p "Press any key to reboot, then ssh once back online to continue with step2.sh"
sudo reboot

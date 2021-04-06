#!/bin/bash
## Updating IP addresses in Windows and Linux hosts files

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${bold}Updating IP Address in Windows and Linux Hosts Files${normal}"

# Set hosts files variables
linux_hosts_file="/etc/hosts"
windows_hosts_file="/mnt/c/Windows/System32/drivers/etc/hosts"

# Get current IP address in Linux hosts files
linux_old_ip=$(sudo cat ${linux_hosts_file} | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | tail -1)
windows_old_ip=$(sudo cat ${windows_hosts_file} | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | tail -1)

# Get IP address
ip=$(hostname -I | cut -d' ' -f1)

# Update Linux hosts file
echo "- Updating Linux hosts file $linux_hosts_file"
if [ $linux_old_ip != $ip ];
then
	echo "❕ Replacing old IP address $linux_old_ip with new IP addresss $ip in $linux_hosts_file"
	sudo sed -i "s/$linux_old_ip/$ip/g" $linux_hosts_file
else
	echo "✅ No updated needed in $linux_hosts_file"
fi

# Update Windows hosts file
echo "- Updating Windows hosts file $windows_hosts_file"
if [ $windows_old_ip != $ip ];
then
	echo "❕ Replace old IP address $windows_old_ip with new IP addresss $ip in $windows_hosts_file"
	echo "Open cmd.exe as Administrator and run:"
	echo "notepad.exe C:/Windows/System32/drivers/etc/hosts"
	read -n1 -s -p "Press any key to continue to continue and restart Apache"
	sudo service apache2 reload
	#echo "Replacing old IP address $windows_old_ip with new IP addresss $ip in $windows_hosts_file"
	#sudo sed -i "s/$windows_old_ip/$ip/g" "$windows_hosts_file"
else
	echo "✅ No updated needed in $windows_hosts_file"
fi
#!/bin/bash
# Stopping Apache2 and MySQL

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${bold}Stopping Apache2 and MySQL${normal}"

## Stop Apache2 if running
echo -e "- Stopping Apache"
status=`sudo service apache2 status`
if [[ $status == *"apache2 is running" ]]
then
	sudo service apache2 stop
else
	echo "✅ Apache2 is not running"
fi

## Start MySQL if not running
echo -e "- Stopping MySQL"
status=`sudo service mysql status`
if [[ $status == *"MySQL is stopped." ]]
then
	echo "✅ MySQL is not running"
else
	read -n1 -s -p "❔ Stop MySQL? (y/n) "
	echo ""
	if [[ $REPLY == "y" ]]
	then
		sudo service mysql stop
	fi
fi
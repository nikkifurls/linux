#!/bin/bash
# Starting Apache2 and MySQL

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${bold}Starting Apache2 and MySQL${normal}"

## Start Apache2 if not running
echo -e "- Staring Apache"
status=`sudo service apache2 status`
if [[ $status == *"apache2 is not running" ]]
then
	sudo service apache2 start
else
	echo "✅ Apache2 is already running"
fi

## Start MySQL if not running
echo -e "- Starting MySQL"
status=`sudo service mysql status`
if [[ $status == *"MySQL is stopped." ]]
then
	read -n1 -s -p "❔ Start MySQL? (y/n) "
	echo ""
	if [[ $REPLY == "y" ]]
	then
		sudo service mysql start
	fi
else
	echo "✅ MySQL is already running"
fi
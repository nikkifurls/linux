#!/bin/bash
# Restarting Apache2 and MySQL

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${bold}Restarting Apache2 and MySQL${normal}"

## Restart Apache2
echo -e "- Restaring Apache"
sudo service apache2 start

## Restart MySQL if not running
echo -e "- Restarting MySQL"
read -n1 -s -p "❔ Start MySQL? (y/n) "
echo ""
if [[ $REPLY == "y" ]]
then
	sudo service mysql start
fi
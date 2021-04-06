#!/bin/bash
# Get Apache2 and MySQL status

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${bold}Getting Apache2 and MySQL status${normal}"

## Get Apache2 status
echo "- Getting Apache status"
status=`sudo service apache2 status`
if [[ $status == *"apache2 is running" ]]
then
	echo "✅ Apache2 is running"
else
	echo "❌ Apache2 is not running"
fi

## Get MySQL status
echo "- Getting MySQL status"
status=`sudo service mysql status`
if [[ $status == *"MySQL is stopped." ]]
then
	echo "❌ MySQL is not running"
else
	echo "✅ MySQL is running"
fi
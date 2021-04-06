#!/bin/bash
# Initializing Linux

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${pinkbold}Initializing${blue}...${normal}"
echo ""

## Update IP address in Windows and Linux hosts files (IP changes on reboot)
if [ -f ~/linux/scripts/update_host_files.sh ]; then
	source ~/linux/scripts/update_host_files.sh
fi

echo ""

## Start Apache2 and MySQL
if [ -f ~/linux/scripts/start_apache_mysql.sh ]; then
	source ~/linux/scripts/start_apache_mysql.sh
fi
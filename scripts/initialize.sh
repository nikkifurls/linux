#!/bin/bash
# Initializing Linux

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${pinkbold}Initializing${blue}...${normal}"
echo ""

## Update IP address in Windows and Linux hosts files (IP changes on reboot)
if [ -f ~/linux/scripts/host_files_update.sh ]; then
	source ~/linux/scripts/host_files_update.sh
fi

echo ""

## Start Apache2 and MySQL
if [ -f ~/linux/scripts/apache_mysql_start.sh ]; then
	source ~/linux/scripts/apache_mysql_start.sh
fi
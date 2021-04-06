#!/bin/bash
## Setting WordPress file permissions

## Include common code
if [ -f ~/linux/scripts/common.sh ]; then
	source ~/linux/scripts/common.sh
fi

echo -e "${bold}Setting WordPress File Permissions${normal}"

if [ $# == 1 ]; then
	echo "- Changing permissions for directories in $1 to 755"
	find $1 -type d -exec sudo chmod 755 {} \;
	echo "- Changing permissions for files in $1 to 644"
	find $1 -type f -exec sudo chmod 644 {} \;
	echo "- Changing permissions for $1/wp-config.php to 660"
	sudo chmod 660 $1/wp-config.php;
else
	echo "❗ Usage: wp_fix_permissions.sh [/full/path/to/WordPress/website], e.g. wp_fix_permissions.sh ~/websites/wordpress"
fi
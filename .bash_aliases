# Directory shortcuts
alias linux="cd ~/linux"
alias lx="cd ~/linux"
alias websites="cd ~/websites"
alias web="cd ~/websites"
alias misc="cd ~/misc"

# Project directories
# Creates an alias for every directory in ~/websites/
for dir in ~/websites/*/
do
    dir=${dir%*/} 			# remove the trailing "/"
    website="${dir##*/}"    # print everything after the final "/"
	alias $website="cd ~/websites/$website"
done

# Apache, MySQL, and PHP
alias apachecd="sudo cd /etc/apache2"
alias mysqlcd="sudo cd /etc/mysql"
alias phpcd="sudo cd /etc/php"

alias apache_status="sudo service apache2 status"
alias apache_restart="sudo service apache2 restart"
alias apache_reload="sudo service apache2 reload"
alias apache_start="sudo service apache2 start"
alias apache_stop="sudo service apache2 stop"

alias mysql_status="sudo service mysql status"
alias mysql_restart="sudo service mysql restart"
alias mysql_reload="sudo service mysql reload"
alias mysql_start="sudo service mysql start"
alias mysql_stop="sudo service mysql stop"

# Linux
# update: downloads package information
# upgrade: install upgrades using updated package data
alias upgrade="sudo apt-get update; sudo apt-get upgrade"

# WordPress
alias wgetwp="wget https://wordpress.org/latest.tar.gz; tar -xzvf latest.tar.gz"
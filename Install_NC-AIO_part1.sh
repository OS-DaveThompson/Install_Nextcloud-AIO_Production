#!/bin/bash
# https://www.linode.com/docs/guides/how-to-install-nextcloud-on-ubuntu-22-04/
# touch test.sh
# chmod a+x test.sh
# nano test.sh
#
echo
echo '###===---'
echo '######======------'
echo '############============------------'
echo '###'
echo '###   Adding new user os-dave with sudo privileges.'
echo "###   Please enter password and sundry info when asked:"
echo
adduser os-dave -q
sudo usermod -aG sudo os-dave
echo
echo 'Now installing NC-AIO part 1'
echo
sudo apt update
sudo apt upgrade -y                    #This will produce a LOT of output
echo
echo "Installing Apache Webserver"
echo
apt install apache2 -y
#

echo
echo '###===---'
echo '######======------'
echo '############============------------'
echo '###'
echo '###   Now configuring Uncomplicated Firewall.'
echo "###   Accept the risk of disconnection to proceed:"
echo
ufw allow openssh
ufw allow in "Apache Full"
ufw enable
#

echo
echo "Finishing up with Apache"
echo
a2dismod mpm_event
a2enmod mpm_prefork
#
systemctl restart apache2
#systemctl status apache2
#

echo
echo "Installing MariaDB"
echo
apt install mariadb-server -y
systemctl status mariadb
systemctl enable mariadb

echo
echo '###===---'
echo '######======------'
echo '############============------------'
echo '###'
echo '###   MySQL Secure Installation is about to be run.'
echo "###   Answer the following security questions in this way:"
echo
echo '1 You must "Create root password" and log it somewhere'
echo '2 NO to "Switch socket authentication"'
echo '3 NO to "Change the root password"'
echo '4 YES to "Remove anonymous users"'
echo '5 YES to "Disallow root login remotely?"'
echo '3 YES to "Remove test database and access to it?"'
echo '4 YES to "Reload privilege tables now?"'
echo
echo '############============------------'
echo '######======------'
echo '###===---'
echo
echo
mysql_secure_installation
#

echo
echo
echo '###===---'
echo '######======------'
echo '############============------------'
echo '###'
echo '###   You are about to enter the MySQL command line interpreter.'
echo "###   Enter the following lines"
echo
echo "CREATE DATABASE nextcloud;"
echo "SHOW DATABASES;"
echo "GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost' IDENTIFIED BY 'password from earlier';"
echo "FLUSH PRIVILEGES;"
echo "quit"
echo
echo '############============------------'
echo '######======------'
echo '###===---'
echo
echo
sudo mysql -u root
#

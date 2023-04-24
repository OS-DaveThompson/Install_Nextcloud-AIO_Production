#!/bin/bash

apt install php -y
apt install php-apcu php-bcmath php-cli php-common php-curl php-gd php-gmp php-imagick php-intl php-mbstring php-mysql php-zip php-xml -y
sudo phpenmod bcmath gmp imagick intl
apt install unzip -y
apt install libmagickcore-6.q16-6-extra -y

wget https://download.nextcloud.com/server/releases/nextcloud-24.0.1.zip
unzip nextcloud-24.0.1.zip
chown -R www-data:www-data nextcloud
mv nextcloud /var/www/html
a2dissite 000-default.conf
echo 'The file: /etc/apache2/sites-available/nextcloud.conf needs to be populated.'
echo 'if it is not then run part 3.'

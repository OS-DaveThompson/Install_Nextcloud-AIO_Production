#!/bin/bash
echo 'The file: /etc/apache2/sites-available/nextcloud.conf will be populated.'
echo
echo '<VirtualHost *:80>' > /etc/apache2/sites-available/nextcloud.conf
echo '    DocumentRoot "/var/www/html/nextcloud"' >> /etc/apache2/sites-available/nextcloud.conf
echo '    ServerName example.com' >> /etc/apache2/sites-available/nextcloud.conf
echo '' >> /etc/apache2/sites-available/nextcloud.conf
echo '    <Directory "/var/www/html/nextcloud/">' >> /etc/apache2/sites-available/nextcloud.conf
echo '        Options MultiViews FollowSymlinks' >> /etc/apache2/sites-available/nextcloud.conf
echo '        AllowOverride All' >> /etc/apache2/sites-available/nextcloud.conf
echo '        Order allow,deny' >> /etc/apache2/sites-available/nextcloud.conf
echo '        Allow from all' >> /etc/apache2/sites-available/nextcloud.conf
echo '    </Directory>' >> /etc/apache2/sites-available/nextcloud.conf
echo '' >> /etc/apache2/sites-available/nextcloud.conf
echo '    TransferLog /var/log/apache2/nextcloud_access.log' >> /etc/apache2/sites-available/nextcloud.conf
echo '    ErrorLog /var/log/apache2/nextcloud_error.log' >> /etc/apache2/sites-available/nextcloud.conf
echo '' >> /etc/apache2/sites-available/nextcloud.conf
echo '</VirtualHost>' >> /etc/apache2/sites-available/nextcloud.conf
echo '' >>/etc/apache2/sites-available/nextcloud.conf


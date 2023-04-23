#!/bin/bash





echo
echo '###===---'
echo '######======------'
echo '############============------------'
echo '###'
echo '###   Configure Nextcloud webserver properties.'
echo "###   Create the file /etc/apache2/sites-available/nextcloud.conf"
echo '###   With the text from below'
echo
echo '<VirtualHost *:80>'
echo '    DocumentRoot "/var/www/html/nextcloud"'
echo '    ServerName example.com'
echo
echo '    <Directory "/var/www/html/nextcloud/">'
echo '        Options MultiViews FollowSymlinks'
echo '        AllowOverride All'
echo '        Order allow,deny'
echo '        Allow from all'
echo '    </Directory>'
echo
echo '    TransferLog /var/log/apache2/nextcloud_access.log'
echo '    ErrorLog /var/log/apache2/nextcloud_error.log'
echo
echo '</VirtualHost>'

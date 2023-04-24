#!/bin/bash

echo 'sudo nano /etc/php/8.1/apache2/php.ini'
echo
echo 'max_execution_time = 360'
echo 'memory_limit = 512M'
echo 'post_max_size = 200M'
echo 'upload_max_filesize = 200M'
echo 'date.timezone = Europe/London'
echo 'opcache.enable=1'
echo 'opcache.memory_consumption=128'
echo 'opcache.interned_strings_buffer=8'
echo 'opcache.max_accelerated_files=10000'
echo 'opcache.revalidate_freq=1'
echo 'opcache.save_comments=1'
echo
echo 'After modifying php.ini, run the following:'
echo 'a2enmod dir env headers mime rewrite ssl'
echo 'systemctl restart apache2'
echo 'systemctl status apache2'


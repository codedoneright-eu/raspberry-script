#!/bin/bash

#Create an alias for Apache2 web server
#Modify directory paths if you want to install service in a different direcotry
echo "<IfModule alias_module>
	Alias /rainloop "/var/www/rainloop/"
	<Directory "/var/www/rainloop/data">
		Options -Indexes
		Deny from all
	</Directory>
</IfModule>" >> /etc/apache2/mods-enabled/alias.conf

#Create direcotry for Rainloop
mkdir /var/www/rainloop
chmod -R 777 /var/www/rainloop

#Download package
cd /var/www/rainloop
wget https://www.rainloop.net/repository/webmail/rainloop-community-latest.zip

#Unzip package and remove the zip file
unzip rainloop-community-latest.zip
rm rainloop-community-latest.zip

#Set proper permissions to the folder
chmod -R 750 /var/www/rainloop
chown -R www-data:www-data /var/www/rainloop

#Restart Apache
service apache2 restart

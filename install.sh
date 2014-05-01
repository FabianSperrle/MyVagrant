#!/usr/bin/env bash

# echo "--- Update apt and System ---"
# apt-get update
# apt-get upgrade

echo "--- Install Apache and link to synced vagrant dir ---"
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

echo "--- Add PHP5 ---"
apt-get install php5 php5-cli

echo "--- Enabling mod-rewrite ---"
sudo a2enmod rewrite
sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

echo "--- Turn PHP errors on ---"
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini

echo "--- Install vim and cUrl ---"
apt-get install vim curl

echo "--- Install git ---"
apt-get install git

echo "--- Create Aliases ---"
echo "--- la ---"
alias la="ls -la"
echo "--- .. ---"
alias ..="cd ../"

echo "--- Done. ---"
echo "--- Start Working ---"
echo "--- Or grab a beer... ---"

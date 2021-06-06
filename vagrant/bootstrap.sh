#!/usr/bin/env bash

# [Vagrant User SSH]
# user: vagrant
# pwd:  vagrant

# [Allow root ssh login]
# $ sudo vi /etc/ssh/sshd_config
# >>> // vi /etc/ssh/sshd_config
# PermitRootLogin yes
# PasswordAuthentication yes
# <<<
# $ sudo systemctl restart ssh
# [Change Root password]
# user: root
# pwd: root

# [Update Ubuntu OS]
# apt update -y && apt upgrade -y

# [Install Apache 2.4]
# $ apt install apache2 -y
# $ a2enmod rewrite

# [Install MySQL 8]
# $ apt install mysql-server -y
# $ mysql_secure_installation
# **Create new DB User
# mysql> CREATE USER 'laravel'@'%' IDENTIFIED WITH mysql_native_password BY 'laravel';
# mysql> GRANT ALL PRIVILEGES ON laravel.* TO 'laravel'@'%';
# mysql> FLUSH PRIVILEGES;

# [Install PHP 7.4]
# $ apt install php7.4 php7.4-bcmath php7.4-mbstring php7.4-zip php7.4-json php7.4-mysql php7.4-opcache php7.4-xml php7.4-curl php7.4-cli

# [Install Composer version 2.1.1 2021-06-04 08:46:46]
# $ apt install unzip
# $ curl -sS https://getcomposer.org/installer -o composer-setup.php
# $ HASH=`curl -sS https://composer.github.io/installer.sig`
# $ echo $HASH
# $ php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
# $ sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
# $ composer --version

# [Install Laravel 8]
# $ composer create-project laravel/laravel laravel-pos
# $ cp -r laravel-pos /var/www/html
# $ chown -R www-data:www-data /var/www/html
# $ chmod -R 775 /var/www/html
# **Update apache document root
# $ vi /etc/apache2/sites-available/000-default.conf
# >>>
# DocumentRoot /var/www/html/public
# <<<
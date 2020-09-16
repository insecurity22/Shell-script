#! /bin/bash
# Install MySQL

echo -e "\n\nInstall MySQL\n\n"
echo -e ".\n.\n.\n.\n.\nInstall Mysql server."
sudo apt-get update
sudo apt-get install mysql-server

service mysql start

echo -e "If you want to start mysql, Please enter the "mysql -u root -p password" command"
# mysql -u root -p

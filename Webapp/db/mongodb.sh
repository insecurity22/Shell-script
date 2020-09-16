#! /bin/bash
# Install mongodb

echo -e "\n\nInstall mongoDB\n\n"
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org

sudo service mongod start
sudo service mongod status

# Connect mongodb
# mongo

# Create account
# https://frontalnh.github.io/2018/01/23/mongodb-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0/

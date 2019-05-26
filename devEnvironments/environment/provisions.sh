#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install -y mongodb-org

systemctl daemon-reload

sudo systemctl start mongodb

netstat -plntu

sudo systemctl status mongodb

sudo systemctl enable mongodb

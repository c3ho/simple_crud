#!/bin/sh

sudo amazon-linux-extras install docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo service docker start
sudo usermod -a -G docker ec2-user

sudo service docker start
cd home/ubuntu/server

docker-compose up -d

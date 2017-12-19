#!/bin/sh

#update cache
sudo apt-get update

#Install dependencies
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
	wget
	
#Add repository key	
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#update cache   
sudo apt-get update

#Install docker-ce
sudo apt-get install docker-ce

#Download Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

#Apply permission
sudo chmod +x /usr/local/bin/docker-compose

#Clone Project
sudo curl -L https://github.com/deyrakesh85/DevOps-Stack-Docker/archive/0.1.tar.gz -o devops-stack-docker.tar.gz
sudo tar -xvf devops-stack-docker.tar.gz

#Set Permissions 
sudo chmod -R 755 DevOps-Stack-Docker-*

#Run Setup file
cd DevOps-Stack-Docker-*
sudo ./setup.sh







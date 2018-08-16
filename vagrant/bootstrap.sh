#!/bin/bash

# Generate locales and set them to the environment
sudo locale-gen en_US.UTF-8
sudo update-locale --reset
sudo update-locale LC_TYPE=en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8
sudo update-locale LANGUAGE=en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8

# Install system updates and requirements
sudo apt-get update
sudo apt-get -y upgrade

# Install Java 8 quietly
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selectionssudo
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default

# Add Jenkins repo key and Debian package repo to the system
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update

# Install Jenkins
sudo apt-get -y install jenkins

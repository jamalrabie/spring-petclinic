#!/usr/bin/env bash

# update all existing packages
sudo yum -y update

# install wget and dos2unix
sudo yum -y install wget
sudo yum -y install dos2unix

# download java
wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7/jdk-7-linux-x64.rpm"

# install java
sudo yum -y install /tmp/jdk-8-linux-x64.rpm
sudo rm /tmp/jdk-8-linux-x64.rpm

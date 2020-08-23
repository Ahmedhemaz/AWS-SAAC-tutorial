#!/bin/bash

###############################################
#### USER THIS SCRIPT IF YOU LANCHED LINUX2 ###
###############################################


# get admin privileges
sudo su

# install httpd (linux2 version)
# copy to userData Ec2 
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World" > /var/www/html/index.html
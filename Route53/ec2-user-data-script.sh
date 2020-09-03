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
EC2_AVAIL_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
echo "Hello World from $(hostname -f) in AZ $EC2_AVAIL_ZONE" > /var/www/html/index.html
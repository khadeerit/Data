#!/bin/bash

echo "---user adding----"

sudo useradd hyd


echo "---set passowrd for a user----"

sudo echo "saro123" | passwd --stdin hyd


echo "---ssh modification-----"


sudo sed -i s'/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config


service sshd reload

 
echo "##adding sudo access#####"

echo " " >> /etc/sudoers

echo "hyd       ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

echo " " >> /etc/sudoers


exit 0

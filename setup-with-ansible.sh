#!/bin/sh

#Get username as input as pass it as a parameter to run ansible
read -p "Enter user you want to run ansible as (this should the same user you have set passwordless login for): " username
sudo ansible-playbook -i inventory playbook.yml --user=$username
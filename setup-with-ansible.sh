#!/bin/sh

echo "\n\n1. Setup Locally\n"
echo "2. Setup on a remote server\n"
read -p "Enter your choice: (1 or 2):" choice

case $choice in
        1)
                sudo ansible-playbook -i inventory -c local playbook.yml
                ;;
        2)
                #Get username as input as pass it as a parameter to run ansible
                read -p "Enter user you want to run ansible as (this should the same user you have set passwordless login for): " username
                sudo ansible-playbook -i inventory playbook.yml --user=$username
                ;;
        *)
                echo "Sorry, Does not match choices!!"
                echo "Exiting..."
                ;;
esac

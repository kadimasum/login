#! /usr/bin/bash

read -p "Enter your username: " USERNAME
read -sp "Create password: " PASSWORD
PASSWORD=$(echo "$PASSWORD" | tr -d '[:space:]')
echo
read -sp "Confirm password: " PASSWORD2
PASSWORD2=$(echo "$PASSWORD2" | tr -d '[:space:]')
echo
if [[ "$PASSWORD" != "$PASSWORD2" ]]
then
    echo "Password does not match!"
    exit 1
else
    echo "You're logged in as $USERNAME!"
fi

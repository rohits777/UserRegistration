#!/bin/bash -x
echo "Welcome to User Registration Program"
read -p "Enter Your First Name:" name
read -p "Enter your Last Name:" lastname
regex="^[A-Z][a-z]{3,20}$"
 if [[ $name =~ $regex && $lastname =~ $regex ]]
   then
      echo "Valid Name and last name"
   else
      echo "Invalid Name and last name"
 fi

#!/bin/bash -x
echo "Welcome to User Registration Program"
read -p "Enter Your First Name:" name
regex="^[A-Z][a-z]{3,20}$"
 if [[ $name =~ $regex ]]
   then
      echo "Valid Name"
   else
      echo "Invalid Name"
 fi

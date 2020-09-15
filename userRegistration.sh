#!/bin/bash -x
echo "Welcome to User Registration Program"
read -p "Enter Your First Name:" name
read -p "Enter your Last Name:" lastname
read -p "Enter your Email" mail
regex="^[A-Z][a-z]{3,20}$"
mailregex="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"

 if [[ $name =~ $regex && $lastname =~ $regex ]]
   then
      echo "Valid Name and last name"
   else
      echo "Invalid Name and last name"
 fi

if [[ $mail =~ $mailregex ]]
then
        echo "valid Email"
else
        echo "invalid Email"
fi

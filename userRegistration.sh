#!/bin/bash
echo "Welcome to User Registration Program"
read -p "Enter Your First Name:" name
read -p "Enter your Last Name:" lastname
read -p "Enter your Email:" mail
read -p "Enter your Mobile No:" mobile
read -p "Enter Your Password" password
regex="^[A-Z][a-z]{3,20}$"
mailregex="^([a-zA-Z_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"
mobileregex="^(\+91(-)?|91(-)?|0(-)?)?(\d{10}){1}?$"
passwordregex="^(?=.*\d)(?=.*[a-z])(?=.*[@$!%*?&])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"
#For First name and last name
 if [[ $name =~ $regex && $lastname =~ $regex ]]
   then
      echo "Valid Name and last name"
   else
      echo "Invalid Name and last name"
 fi

#For Email Validation
if [[ $mail =~ $mailregex ]]
then
        echo "valid Email"
else
        echo "invalid Email"
fi

#For Mobile Validation
if [[ $mobile=~$mobileregex ]]
  then
      echo "Valid Mobile Number"
  else
      echo "Invalid Mobile Number"
fi

#For password Validation
if [[ $password=~$passwordregex ]]
   then
      echo "Valid Password"
   else
      echo "Invalid Password"
fi

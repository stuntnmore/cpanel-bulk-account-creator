#!/bin/bash
IFS="$"

# cPanel Bulk account creator v1.2 BY Stuntnmore
# Highly customizable to fit your needs
# Requires root access to the cPanel WHM server to work or a user who has access to the cPanel admin
# There will be a file called output.txt genrated after the accounts are created, you will see the info
# for the account creation in terminal but can refrence inside output.txt as well even after the script is done.

## Change domain.com to your specified domain you wish to use, make sure you do not use http or www just domain and the TLD associated.
# You can add multiple values and copy "domain.com" multiple times in a new line inside the array1
array=(
"domain.com"
"domain.com"
"domain.com"
"domain.com"
"domain.com"
);

## Change DomainUsername to your specified username that will be associated to the domain, it goes in order from top to bottom from previous domains
# You can add multiple values and copy "DomainUsername" multiple times in a new line inside the array1
array1=(
"DomainUsername"
"DomainUsername"
"DomainUsername"
"DomainUsername"
"DomainUsername"
);

## Set the Domain password that will be set for the cPanel user / domain
# You can add multiple values and copy "AccountPassword" multiple times in a new line inside the array2
array2=(
"AccountPassword"
"AccountPassword"
"AccountPassword"
"AccountPassword"
"AccountPassword"
);

for index in ${!array[*]}; do
  echo 'y' | /scripts/createacct ${array[$index]} ${array1[$index]} ${array2[$index]} |& tee -a output.txt
  echo 'Complete'
done

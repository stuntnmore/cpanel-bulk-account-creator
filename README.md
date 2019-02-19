# cpanel-bulk-account-creator
Allows you to use SHELL access to create multiple user accounts within WHM. Unlimited Instances can be used and its fairly straight forward.

**cPanel Bulk account creator v1.2 BY Stuntnmore**
- Highly customizable to fit your needs
- Requires root access to the cPanel WHM server to work or a user who has access to the cPanel admin
- There will be a file called output.txt genrated after the accounts are created, you will see the info for the account creation in terminal but can refrence inside output.txt as well even after the script is done.

# Instructions
- Download cPanelBulkAcc-Creator.sh

- Type in Shell / terminal
`chmod +x cPanelBulkAcc-Creator.sh`

- **Make the Edits for the sites you would like to create**

- nano can be used to edit the file or download locally, edit then upload back to server

- run the script with command
` sh cPanelBulkAcc-Creator.sh`

##### Change domain.com to your specified domain you wish to use, make sure you do not use http or www just domain and the TLD associated.
##### You can add multiple values and copy "domain.com" multiple times in a new line inside the array1
```bash
 array=(
"domain.com"
"domain.com"
"domain.com"
"domain.com"
"domain.com"
);
```


##### Change DomainUsername to your specified username that will be associated to the domain, it goes in order from top to bottom from previous domains
##### You can add multiple values and copy "DomainUsername" multiple times in a new line inside the array1
```bash
 array1=(
"DomainUsername"
"DomainUsername"
"DomainUsername"
"DomainUsername"
"DomainUsername"
);
```

##### Set the Domain password that will be set for the cPanel user / domain
#### You can add multiple values and copy "AccountPassword" multiple times in a new line inside the array2
```bash
array2=(
"AccountPassword"
"AccountPassword"
"AccountPassword"
"AccountPassword"
"AccountPassword"
 );
 
```

##### This script takes each first value of array, array1 & array2 and combines them into each instance per line that is generated, so
First line of array will be called and create it like so
**`domain.com DomainUsername AccountPassword`**

Then it would take the second line in the array and do the same thing with those details 
**`domain2.com DomainUsername2 AccountPassword2`**

And so fourth will cycle all values within all the information that is provided inside the arrays

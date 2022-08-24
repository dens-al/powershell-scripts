# powershell-scripts
powershell scripts for windows administrating

Get or create AD resources with powershell scripts using CSV files
1. To create AD users with necessary memberships create CSV file and add it's name in [create_AD_user.ps1](create_AD_user.ps1) file. 
Example CSV:
```commandline
FirstName;LastName;EmailAddress;OU;samAccountName;Password;Groups
someuser1;;;"OU=BNT Users,DC=bntru,DC=local";someuser1;StRoNgPassword1;BNT Remote Access Users,onegroup,anothergroup
someuser2;;;"OU=BNT Users,DC=bntru,DC=local";someuser1;StRoNgPassword2;BNT Remote Access Users,onegroup
```

2. Get AD currents rights. Script creates CSV file with results
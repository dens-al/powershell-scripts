# powershell-scripts
powershell scripts for windows administrating

Get or create AD resources with powershell scripts using CSV files
1. To create AD users with necessary memberships create CSV file and add it's name in [create_AD_user.ps1](create_AD_user.ps1) file. 
Example CSV:
```commandline
FirstName;LastName;EmailAddress;OU;samAccountName;Password;Groups
someuser1;;;"OU=Users,DC=DOMAIN,DC=local";someuser1;StRoNgPassword1;Remote Access Users,onegroup,anothergroup
someuser2;;;"OU=Users,DC=DOMAIN,DC=local";someuser1;StRoNgPassword2;Remote Access Users,onegroup
```

2. To get current AD rights from folder with subfolders use [get_AD_info.ps1](get_AD_info.ps1). Put the path to folder, number of subfolders and path, where generated CSV-file will be placed and run the script. Script creates CSV file with results
3. To add AD rights create CSV file and add it's name in [add_rights.ps1](add_AD_rights.ps1).
Example CSV:
```commandline
"Folder";"Name";"IdentityReference";"AccessControlType";"FilesystemRights"
"D:\storage\Finance\1";"user1";"DOMAIN\user1";"Allow";"CreateFiles, AppendData, ReadAndExecute, Synchronize"
"D:\storage\Finance\1";"user2";"DOMAIN\user2";"Allow";"CreateFiles, AppendData, ReadAndExecute, Synchronize"
"D:\storage\Finance\2";"user1";"DOMAIN\user1";"Allow";"CreateFiles, AppendData, ReadAndExecute, Synchronize"
```
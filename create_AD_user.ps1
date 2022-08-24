Import-Csv "C:\Users\aabb02\Documents\AD Users script\STP_6353.csv" `
-Encoding Default `
-Delimiter ";" | ForEach-Object {
$upn = $_.SamAccountName
$grs = $_.Groups.split(",")
$uname = $_.FirstName

New-ADUser -Name $uname `
-DisplayName $uname `
-GivenName $_.FirstName `
-EmailAddress $_.EmailAddress`
-UserPrincipalName $upn `
-SamAccountName $_.samAccountName `
-Path $_.OU `
-AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -force) -Enabled $true

foreach ($group in @($grs)) {
Add-AdGroupMember -Identity $group `
-Members $_.samAccountName
}
}
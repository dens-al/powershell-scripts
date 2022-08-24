Import-Csv "C:\Users\aabb02\Desktop\some_file.csv" `
-Encoding Default `
-Delimiter ";" | ForEach-Object {
$folder = $_.Folder
$name = $_.Name
#$rights = $_.FilesystemRights

## Remove full access to folder
Remove-NTFSAccess `
-Path $folder `
-Account $name `
-AccessRights FullControl

# Special access (Read and Execute) to folder only
Add-NTFSAccess `
-Path $folder `
-Account $name `
-AccessRights CreateFiles, CreateDirectories, ReadAndExecute, Synchronize `
-AppliesTo ThisFolderOnly

# Full access to subfolders and files
Add-NTFSAccess `
-Path $folder `
-Account $name `
-AccessRights FullControl `
-AppliesTo SubfoldersAndFilesOnly

}
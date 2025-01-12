$folderpath = Read-Host "Enter the path you want to count files from"

$homefiles = (Get-ChildItem -Path $folderpath -Recurse -File).Count

Write-Host "There are $homefiles files in  $folderpath"

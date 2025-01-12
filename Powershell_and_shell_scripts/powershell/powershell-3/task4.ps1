param (
    [string]$foldername,
    [string]$filename,
    [int]$number
)

if (-not (Test-Path -Path $foldername -PathType Container)) {
    New-Item -Path $foldername -ItemType Directory
    Write-Output "Folder $foldername has been created."
}

for ($i = 1; $i -le $number; $i++) {
    $newFile = Join-Path $foldername "$filename$i.txt"
    New-Item -Path $newFile -ItemType File | Out-Null
}

$fileCount = (Get-ChildItem -Path $foldername).Count
Write-Output "$fileCount files have been created in the folder $foldername."
Get-ChildItem -Path $foldername | Select-Object Name

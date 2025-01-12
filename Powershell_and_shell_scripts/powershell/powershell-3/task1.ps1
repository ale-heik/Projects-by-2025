param (
    [string]$foldername
)

# katsotaan onko kansiota olemassa
if (Test-Path -Path $foldername -PathType Container) {
    $files = Get-ChildItem -Path $foldername
    $filecount  = $files.Count
    Write-Output "$filecount files in the folder $foldername"
    $files | Select-Object Name | ForEach-Object { $_.Name }
} else {
    Write-Output "Sorry, $foldername does not exist."
}
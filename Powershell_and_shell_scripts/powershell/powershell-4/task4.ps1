$fileNames = @()
while ($true) {
    $name = Read-Host "Give a file name, press ENTER to quit"
    if ([string]::IsNullOrWhiteSpace($name)) {
        break
    }
    $fileNames += $name
}

# luo tiedosto päivämäärällä
$currentTime = Get-Date -Format "dd.MM.yyyy HH.mm"
foreach ($fileName in $fileNames) {
    $filePath = "$HOME\$fileName"
    "Today is $currentTime" | Out-File -FilePath $filePath
}

# tulosta onnistuminen
Write-Host "$($fileNames.Count) files were created successfully."
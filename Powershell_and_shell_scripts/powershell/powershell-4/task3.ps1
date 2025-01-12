$workstationNames = @()
while ($true) {
    $name = Read-Host "Give workstation name, press ENTER to quit"
    if ([string]::IsNullOrWhiteSpace($name)) {
        break
    }
    $workstationNames += $name
}

#Kirjoita nimet tiedostoon
$filename = "$HOME\temp.txt"
$workstationNames | Out-File -FilePath $filename

#tulosta onnistuminen
Write-Host "$filename created successfully"
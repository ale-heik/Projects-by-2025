param(
    [string]$fileName
)

# hae paikallisten käyttäjien tiedot
$users = Get-LocalUser | Select-Object Name, FullName, SID, LastLogos

# tallenna tiedot CSV-tiedostoon
$users | Export-Csv -Path $fileName -NoTypeInformation

Write-Host "Local user information has been written to $filename successfully."A
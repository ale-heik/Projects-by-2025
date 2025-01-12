#scripti jolla kirjoitetaan käyttäjän nimi tiedostoon
$default = "Aleksi Heikkilä"
$User = Read-Host "Anna nimesi <$default>"

if ( $user -eq "" ) {$User = $default}

$file = "TTC2060-3022"
$sharedPath = Join-Path -Path "\\ghost.labranet.jamk.fi\temp" -ChildPath $file

$attendanceInfo = "Minä $user olen tänään $(Get-Date) luennolla."
$attendanceInfo | Add-Content -Path $sharedPath

Write-Host "Ilmoitteutuminen onnistui tiedostoon $sharedPath"
notepad.exe $sharedPath
#Skripti lukee laitteet csv tiedostosta ja laskee niiden yhteishinnan
$file = ".\toinen-tuntitehtava.csv"
$devices = Import-Csv $file
$sum = 0

#Käydään laitteet läpi loopissa
foreach ($device in $devices){
    $device.name
    $sum = $sum + $device.price
}

Write-Host "Löytyi $($devices.count) laitetta ja niiden hinta on yhteensä $sum"
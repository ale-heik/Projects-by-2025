#eka tekele
$msg = "There are seven brothers:"
$brothers = "Juhani", "Tuomas", "Aapo", "Simeoni", "Timo", "Lauri", "Eero"

#näytetään velikullat
$msg
foreach ($brother in $brothers) {
    write-Host $brother
}
Write-Host "The oldest is $($brothers[0]) and the youngest is $($brothers[6])"
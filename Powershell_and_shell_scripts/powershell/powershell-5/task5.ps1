#funtio tapahtumien kirjaamiseen
function Add-MyEvent {
    param (
        [ValidateSet("Error", "Warning", "Information")]
        [string]$Type,
        [string]$Message
    )
    
    #kirjoitetaan tapahtumalokiin
    Write-EventLog -LogName Application -Source "MyPowerShell" -EntryType -EventId 1000 -Message $Message
}

# luodaan uusi tapahtumalähde, jos sitä ei vielä ole
if (-Not (Get-EventLog -LogName Application -Source "MyPowerShell" -ErrorAction SilentlyContinue)) {
    New-EventLog -LogName Application -Source "MyPowerShell"
    Write-Host "Tapahtumalähde 'MyPowerShell' luotu onnistuneesti."
}

# Skriptin parametrit
param(
    [string]$filename
)

# Yritetään suorittaa CSV-tiedoston luonti ja käsitellään mahdolliset virheet
try {
    # Haetaan paikalliset käyttäjät ja tallennetaan tiedot CSV-tiedostoon
    $users = Get-LocalUser | Select-Object Name, FullName, SID, LastLogon
    $users | Export-Csv -Path $filename -NoTypeInformation

    # Lisätään Information-tyyppinen tapahtuma lokiin
    Add-MyEvent -Type "Information" -Message "Tiedosto $filename luotiin onnistuneesti paikallisten käyttäjien tiedoilla."
    Write-Host "Paikallisten käyttäjien tiedot tallennettiin tiedostoon $filename onnistuneesti."
} catch {
    # Käsitellään virheet ja kirjataan tapahtuma
    $errorMessage = "Tiedoston $filename luonti epäonnistui. Virhe: $($_.Exception.Message)"
    Add-MyEvent -Type "Error" -Message $errorMessage
    Write-Host $errorMessage
}
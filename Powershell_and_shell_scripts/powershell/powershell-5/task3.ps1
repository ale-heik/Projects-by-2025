param (
    [string]$filename
)

# Tarkista, että tiedosto on olemassa
if (!(Test-Path -Path $filename)) {
    Write-Host "Virhe: Tiedostoa $filename ei ole olemassa." -ForegroundColor Red
    exit
}

# Lue CSV-tiedosto ja luo käyttäjät
try {
    $users = Import-Csv -Path $filename
    foreach ($user in $users) {
        $firstName = $user.FirstName
        $lastName = $user.LastName

        # Tarkista, että etu- ja sukunimi on annettu
        if (-not $firstName -or -not $lastName) {
            Write-Host "Ohitetaan käyttäjä, jolla puuttuu etu- tai sukunimi: $user" -ForegroundColor Yellow
            continue
        }

        # Luo käyttäjätunnus ottamalla sukunimen 4 ensimmäistä ja etunimen 2 ensimmäistä merkkiä
        $accountName = ($lastName.Substring(0, 4) + $firstName.Substring(0, 2)).ToLower()

        # Luo uusi paikallinen käyttäjä
        Write-Host "Luodaan tili käyttäjälle $firstName $lastName käyttäjätunnuksella $accountName" -ForegroundColor Green
        New-LocalUser -Name $accountName -FullName "$firstName $lastName" -NoPassword
    }

    Write-Host "Kaikki uudet käyttäjätilit on luotu onnistuneesti." -ForegroundColor Green
} catch {
    Write-Host "Tapahtui virhe: $_" -ForegroundColor Red
}
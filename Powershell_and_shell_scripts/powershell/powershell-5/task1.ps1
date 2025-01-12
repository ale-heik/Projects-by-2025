param(
    [string]$filename
)

# tarkista onko tiedostoa olemassa
if (-Not (Test-Path -Path $filename)) {
    Write-Host "Error: File $filename does not exist."
    exit
}

# lue tiedoston rivit
$lines = Get-Content -Path $filename

# Luo käyttäjätiedot
$accountsCreated = 0
foreach ($line in $lines) {
    $fields = $line -split ","
    $lastName = $fields[0]
    $firstName = $fields[1]
    $accountName = ($lastName.Substring(0, 4) + $firstName.Substring(0, 2)).ToLower()

    Write-Host "Hello my collague $firstName $lastName, this is your new account: $accountName"
    $accountsCreated++
}

Write-Host "$accountsCreated new accounts created successfully"
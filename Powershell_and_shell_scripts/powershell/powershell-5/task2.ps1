param(
    [string]$filename
)

#tarkista onko tiedosto olemassa
if (-Not (Test-Path -Path $filename)) {
    Write-Host "Error: File $filename does not exist."
    exit
}

#lue URL-osoitteet tiedostosta
$urls = Get-Content -Path $filename

#avaa URL-osoitteet selaimesta
foreach ($url in $urls) {
    Start-Process $url
}

Write-Host "All URLs have been opened successfully."
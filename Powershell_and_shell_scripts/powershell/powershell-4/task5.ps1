param(
    [string]$folderName
)

# tarkista onko kansiota
if (Test-Path -Path $folderName) {
    $files = Get-ChildItem -Path $folderName | Select-Object -ExcludeProperty Name
    $outputFile = "$HOME\files.txt"
    $files | Out-File -FilePath $outputFile

    # tulosta onnistumisviesti
    Write-Host "$($files.Count) filenames were  written to file $outputFile"
} else{
    Write-Host "Sorry, $folderName doesn't exist."
}
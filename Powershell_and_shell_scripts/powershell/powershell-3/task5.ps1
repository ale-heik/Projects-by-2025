param (
    [string]$foldername,
    [string]$newname
)

# Tarkista, onko kansio olemassa
if (-not (Test-Path -Path $foldername -PathType Container)) {
    Write-Output "Sorry, $foldername does not exist."
    return
}

# Hae kaikki tiedostot kansiosta
$files = Get-ChildItem -Path $foldername -File
$fileCount = $files.Count

Write-Output "All $fileCount files will be renamed with name $newname. Yes/No: "
$response = Read-Host

if ($response -eq "Yes") {
    $i = 1
    foreach ($file in $files) {
        $newFileName = "$newname$i.txt"  # Luo uusi tiedostonimi
        $newFilePath = Join-Path -Path $foldername -ChildPath $newFileName
        Rename-Item -Path $file.FullName -NewName $newFileName  # Käytä pelkkää nimeä
        Write-Output "Renamed $($file.Name) to $newFileName"
        $i++
    }
    Write-Output "All files in $foldername have been renamed."
} else {
    Write-Output "Operation cancelled by user."
}

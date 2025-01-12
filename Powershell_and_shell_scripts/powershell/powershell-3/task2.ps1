param (
    [string]$foldername,
    [string]$filename
)
if (Test-Path -Path $foldername -PathType Container) {
    if (Test-Path -Path (Join-Path $foldername $filename)) {
        Write-Output "$filename exists in the foldername $foldername."
    } else {
        Write-Output "Sorry, $filename in the $foldername does not exist."
    }
} else {
    Write-Output "Sorry, $foldername does not exist."
}
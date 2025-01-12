param (
    [string]$foldername,
    [string]$filename
)
if (Test-Path -Path $foldername -PathType Container) {
    $filepath = Join-Path $foldername $filename
    if (Test-Path -Path $filepath) {
        Write-Output "$filename already exists in the folder $foldername."
    } else {
        $response = Read-Host "Create the file $filename? Yes/No"
        if ($response -eq "Yes") {
            New-Item -Path $filepath -ItemType File
            Write-Output "File $filename has been created in $foldername."
        } else {
            Write-Output "file $filename was not created."
        }
    }
} else {
    Write-Output "Sorry, $foldername does not exist."
}
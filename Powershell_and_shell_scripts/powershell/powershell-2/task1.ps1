$files = Get-ChildItem $_homedirectory

$dir = $env:USERPROFILE

$count = $files.count

Write-Host "$count files foud at $dir"

#task1
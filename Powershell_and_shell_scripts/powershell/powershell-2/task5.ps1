param (
    [string]$IPaddress = "192.168.8.8",
    [int]$Attempts = 1
)

Write-Host "I will ping address $IPaddress $Attempts time, Okay?"
$perm = Read-Host "[Y/n]"

if ($perm -eq "y" -or $perm -eq "Y") {
    for ($i = 1; $i -le $Attempts; $i++) {
    Write-Host "try $i to ping: $IPaddress"
    }
} else {
    Write-Host "Permission to ping denied"
}
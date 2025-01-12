function Get-FiluInfo2 {
    param(
        [string]$Extension
    )
    Get-ChildItem -Path $HOME -Filter "*$Extension" | Select-Object Name, Length, LastWriteTime
}
# Suorita funktio
Get-FiluInfo2 -Extension ".txt"
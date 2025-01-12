function Get-FiluInfo {
    Get-ChildItem -Path $HOME | Select-Object Name, Length
}
# Suorita funktio
Get-FiluInfo
$name = "Make"
$number = 4

if (-not $name){
    Write-Output "Hello unknown"}
elseif ($number -le 0) {
    Write-Output "Hello unknown"
}
else{
    1..$number | ForEach-Object { Write-Output "hello $name" }
}
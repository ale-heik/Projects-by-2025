$first = Read-Host("Give the first integer")
$first =[int]$first

$second = Read-Host("Give the second integer")
$second =[int]$second

$sum = $first + $second
$sub = $first - $second
$multi = $first * $second
$div = $first / $second

Write-Host("Sum is $sum")
Write-Host("Subtraction is $sub")
Write-Host("Multiplication is $multi")
Write-Host("Division is $div")

$applications = Get-Command -CommandType Application

$count = $applications.Count

Write-Host "You got $count applications in powershell"
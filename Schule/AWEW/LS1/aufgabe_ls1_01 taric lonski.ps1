clear-host
$curdate = get-date -Format "dd.MM.yyyy"
Write-Host "Hallo $env:USERNAME! 
Heute ist der $curdate"
Start-Sleep -Seconds 5
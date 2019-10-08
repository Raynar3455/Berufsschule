Clear-Host
$curdate = Get-Date -Format "dd.MM.yyyy"
$tag = (Get-Date).DayOfWeek  
$hostname = $env:USERNAME
$Zeit = (Get-Date).ToString("HH:MM:ss")
$ip = Get-WmiObject win32_systemNetworkConnections
$computerinfo = Get-WmiObject 
$Bios = Get-WmiObject win32_BIOS
Write-Host "Hallo $env:USERNAME !"
Write-Host "Heute ist $tag der $curdate es ist $Zeit "
Write-Host "Host: $hostname"
Write-Host "IP: $ip"
Write-Host "Computerinfo: $computerinfo"
Write-Host "Bios: $Bios"
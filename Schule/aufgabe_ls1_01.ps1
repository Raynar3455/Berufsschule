clear-host
$curdate = get-date -Format "dd.MM.yyyy"
write-host "Hallo $env:username!"
get-date
Get-WmiObject -Class Win32_Computersystem -ComputerName .
Select-Object -Property SystemType
Get-WmiObject Win32_Operatingsystem
select @{Name="Installed";Expression={$_.ConvertToDateTime($_.InstallDate)}}

$system = Get-CimInstance CIM_ComputerSystem
$BIOS = Get-CimInstance CIM_BIOSElement
$betriebssystem = Get-CimInstance CIM_OperatingSystem
$CPU = Get-CimInstance CIM_Processor
$HDD1 = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID = 'C:'"
$HDD2 = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID = 'D:'"
Write-Host "Systeminformationen für: " $system.Name -BackgroundColor Green
"Hersteller: " + $system.Manufacturer
"Model: " + $system.Model
"Seriennummer: " + $BIOS.SerialNumber
"CPU: " + $CPU.Name
"HDD1 Größe: "  + "{0:N2}" -f ($hdd1.Size/1GB) + " GB - " + "{0:P2}" -f ($hdd1.FreeSpace/$hdd1.Size) + " Frei (" + "{0:N2}" -f ($hdd1.FreeSpace/1GB) + " GB)"
"RAM: " + "{0:N2}" -f ($system.TotalPhysicalMemory/1GB) + " GB"
"Betriebssystem: " + $betriebssystem.caption + ", Service Pack: " + $betriebssystem.ServicePackMajorVersion
"Aktueller Benutzer: " + $system.UserName
"Letzter Neustart: " + $betriebssystem.LastBootUpTime

Get-Content -path Computer/OSDisk(C:)C:\temp\info.txt.txt




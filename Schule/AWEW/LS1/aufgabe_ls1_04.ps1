<#


.DESCRIPTION

   Begrüßungsskript, welches sie beim Anmelden an einen Rechner freundlich begrüßt und 
   auch einige Informationen bzgl. des Rechners ausgibt. 

.NOTES

    Einordnung:			FISI-LF6-LS1-AB1-A5
    Aufgabe: 			aufgabe_ls1_04

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			06.06.2018
    Letzte Änderung:	23.10.2018

#>


Clear-Host                                                                             # Bildschirm löschen

$benutzername = $Env:USERNAME                                                          # Begrüßung mit Namen
Write-Output "Hallo $benutzername" 
Write-Output "Herzlich Willkommen bei der Arbeit.`n"

$datum = Get-Date -Format "dd.MM.yyyy" # -UFormat "%d.%m.%Y"                           # Datum- und Zeitinformationen
$zeit = Get-Date -Format "HH:mm"       # -UFormat "%H:%M"
$wochentag = Get-Date -Format "dddd"   # -UFormat "%A"
Write-Output "Datum:     $datum"
Write-Output "Zeit:      $zeit"
Write-Output "Wochentag: $wochentag `n"

$rechnername = $env:COMPUTERNAME                                                       # Rechnerinformationen
$ipadresse = (Test-Connection $rechnername -Count 1).IPV4Address 
$betriebssystem = (get-Wmiobject -Class Win32_OperatingSystem).Caption
$bios = (Get-WmiObject -Class Win32_BIOS).BIOSVersion
Write-Output "Rechnername:     $rechnername"
Write-Output "IP-Adresse:      $ipadresse"
Write-Output "Betriebssystem:  $betriebssystem"
Write-Output "BIOS:            $bios `n"

$cpu = (Get-WmiObject -Class Win32_processor).Name                                      # Hardwareinformationen
$hauptspeicher = Get-WmiObject -Class Win32_physicalmemory  
$hauptspeicherGesamt = $((($hauptspeicher).Capacity | Measure-Object -Sum).Sum/1GB)     # Gesamtspeicher als Summe der einzelnen Bausteine
$festplatten = Get-WmiObject -Class Win32_LogicalDisk | Format-Table DeviceID, FreeSpace, Size, VolumeName
Write-Output "CPU:           $cpu"
Write-Output "Hauptspeicher: $hauptspeicherGesamt GB"
Write-Output "Festplatte(n): "
Write-Output $festplatten

$infoText = Get-content -Path C:\temp\info.txt                                          # Infodatei anzeigen
Write-Output "Aktuelle Informationen:" 
Write-Output $infoText 

Read-Host "`n`nWeiter mit Enter"                                                        # Anhalten

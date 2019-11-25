<#

.DESCRIPTION

     Das Skript zeigt an, wie viele Dateien mit der Endung .exe im Windows-Verzeichnis liegen,
     wie groß diese Dateien durchschnittlich, maximal und minimal sind und
     wie groß sie insgesamt sind?

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2d
    Aufgabe: 			aufgabe_ls2_04

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			27.09.2018
    Letzte Änderung:	10.12.2018

#>


Clear-Host                                                                             # Bildschirm löschen

#$windowsVerzeichnis =$env:windir                                                       # In Windows Verzeichnis wechseln
$windowsVerzeichnis = "E:\"
Push-Location -Path $windowsVerzeichnis                                                      

Write-Output "Informationen beschaffen (Bitte Geduld, es kann etwas länger dauern) ...`n"  # Informationen besorgen
$info = Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue `
    | Where-Object { $_.Name -like "*.exe"} `    | Measure-Object -Property Length -Sum -Maximum -Minimum -Average                

Write-Output "Informationen auswerten ...`n"                                           # Informationsdetails herauskristallisieren
$anzahlDateien = $info.Count
$durchschnittGroesse = [math]::round( $info.Average / 1KB, 2)
$maxGroesse = [math]::round(  $info.Maximum / 1MB, 2)
$minGroesse = [math]::round( $info.Minimum / 1KB, 2)
$gesamtGroesse = [math]::round( ($info.Count * $info.Average) / 1MB, 2)

Write-Output "Ausführbare Dateien (Exe) im Windows-Verzeichnis:"                       # Informationen ausgeben
Write-Output "-------------------------------------------------`n"
Write-Output "Anzahl:                  $anzahlDateien"
Write-Output "Gesamt Größe:            $gesamtGroesse (MB)`n"
Write-Output "Durchschnittliche Größe: $durchschnittGroesse (KB)"
Write-Output "Maximale Größe:          $maxGroesse (MB)"
Write-Output "Minimale Größe:          $minGroesse (KB)"
Write-Output "`n" 

Pop-Location                                                                           # zu Ursprungsverzeichnis zurückkehren
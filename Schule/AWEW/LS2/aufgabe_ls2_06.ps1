<#

.DESCRIPTION

     Das Skript zeigt, wie viele mp3- und mp4-Dateien es im Klassenverzeichnis gibt und
     wie viel Speicherplatz sie belegen.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2f
    Aufgabe: 			aufgabe_ls2_06

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			27.09.2018
    Letzte Änderung:	24.10.2018

#>


Clear-Host                                                                             # Bildschirm löschen

$klassenVerzeichnis = $env:TEMP                                                         # In Klassen-Verzeichnis wechseln
$klassenVerzeichnis = "V:\"
Push-Location -Path $klassenVerzeichnis                                                      

Write-Output "Informationen beschaffen ...`n"  # Informationen besorgen
$infoMp3 = Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue `
    | Where-Object { $_.Name -like "*.mp3" } `    | Measure-Object -Property Length -Sum                 
$infoMp4 = Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue `
    | Where-Object { $_.Name -like "*.mp4" } `    | Measure-Object -Property Length -Sum 
Write-Output "Informationen auswerten ...`n"                                           # Informationsdetails herauskristallisieren
$anzahlMp3Dateien = $infoMp3.Count
#$gesamtGroesseMp3Dateien = [math]::round( ($infoMp3.Count * $infoMp3.Average) / 1MB, 2)
$gesamtGroesseMp3Dateien = [math]::round( $infoMp3.Sum / 1MB, 2)
$anzahlMp4Dateien = $infoMp4.Count
$gesamtGroesseMp4Dateien = [math]::round( $infoMp4.Sum / 1MB, 2)

Write-Output "mp3- und mp4-Dateien im Klassenverzeichnis:"                             # Informationen ausgeben
Write-Output "-------------------------------------------`n"
Write-Output "Klassenverzeichnis:      $klassenVerzeichnis`n"
Write-Output "mp3-Dateien:"
Write-Output "Anzahl:                  $anzahlMp3Dateien"
Write-Output "Gesamt Größe:            $gesamtGroesseMp3Dateien (MB)`n"
Write-Output "mp4-Dateien:"
Write-Output "Anzahl:                  $anzahlMp4Dateien"
Write-Output "Gesamt Größe:            $gesamtGroesseMp4Dateien (MB)`n"
Write-Output "`n" 

Pop-Location                                                                           # zu Ursprungsverzeichnis zurückkehren
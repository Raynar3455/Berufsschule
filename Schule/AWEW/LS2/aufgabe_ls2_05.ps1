﻿<#

.DESCRIPTION

    Das Skript zeigt die 10 Prozesse mit dem höchsten CPU-Verbrauch an 
    und schreibt das Ergebnis in eine HTML-Datei.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2e
    Aufgabe: 			aufgabe_ls2_05

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			27.09.2018
    Letzte Änderung:	10.12.2018

#>


Clear-Host                                                                             # Bildschirm löschen

$dateiname = "aufgabe_ls2_05.html"                                                     # Dateinamen bestimmen
$verzeichnis = (Get-Location).Path

                                                                                       # Prozessinformationen besorgen und in Datei schreiben
Get-Process `
    | Sort-Object -Property cpu -Descending `
    | Select-Object -Property Id, ProcessName, cpu -First 20 `
    | ConvertTo-Html `
    | Out-File -FilePath $dateiname       

Write-Output "Gewünschte Information in Datei $dateiname ($verzeichnis) geschrieben."  # Rückmeldung für Benutzer
Write-Output "`n" 
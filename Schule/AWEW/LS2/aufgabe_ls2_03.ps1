<#

.DESCRIPTION

     Das Skript schreibt für alle Dateien des aktuellen Verzeichnises den Dateiname und die Dateigröße 
     nach Größe sortiert in eine CSV-Datei.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2c
    Aufgabe: 			aufgabe_ls2_03

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			27.09.2018
    Letzte Änderung:	10.12.2018

#>


Clear-Host                                                                             # Bildschirm löschen

$dateiname = "aufgabe_ls2_03.csv"                                                      # Dateinamen bestimmen und Dateien mit Größen hineinschreiben
$verzeichnis = (Get-Location).Path

                                                                                       # Dateiinformationen holen und in CSV-Datei schreiben
Get-ChildItem -File `
    | Sort-Object -Property Length `
    | Select-Object -Property Name, Length `
    | Export-Csv -Path aufgabe_ls2_03.csv -Delimiter ';' -NoTypeInformation                    

Write-Output "Gewünschte Information in Datei $dateiname ($verzeichnis) geschrieben."
Write-Output "`n" 


<#

.DESCRIPTION

     Das Skript zeigt die Anzahl der laufenden und nicht laufenden Dienste an.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2b
    Aufgabe: 			aufgabe_ls2_02

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			27.09.2018
    Letzte Änderung:	10.12.2018

#>


Clear-Host                                                                             # Bildschirm löschen

                                                                                       # Anzahl bestimmen
$anzahlLaufendeDienste = (Get-Service | Where-Object {$_.Status -like "Running"}).Count                     
$anzahlNichtLaufendeDienste = (Get-Service | Where-Object {$_.Status -notlike "Running"} ).Count
$anzahlGesamt = $anzahlLaufendeDienste + $anzahlNichtLaufendeDienste  

Write-Output "`nAnzahl Dienste:"                                                       # Anzahl ausgeben             
Write-Output "---------------"
Write-Output "Laufende Dienste: $anzahlLaufendeDienste"
Write-Output "Nicht laufende Dienste: $anzahlNichtLaufendeDienste"
Write-Output "Gesamt: $anzahlGesamt"
Write-Output "`n" 

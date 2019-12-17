<#

.DESCRIPTION

     Das Skript veranschaulicht verschiedene Möglichkeiten zum
     Umgang mit Feldern.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A10
    Aufgabe: 			aufgabe_ls2_15

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			03.12.2019
    Letzte Änderung:	

#>


Clear-Host

$liste1 = @(1,1,2,3,5,8,13)                                # Felder anlegen
$liste2 = 1,1,2,3,5,8,13

Write-Host "Feld 1:"                                        # Felder ausgeben
$liste1
Write-Host ""
Write-Host "Feld 2:"                      
$liste2
Write-Host ""

$anzahl1 = $liste1.Count                                   # Listenlänge bestimmen und ausgeben
$anzahl2 = $liste2.Count
Write-Host "Anzahl der Listenelemente (liste1): $anzahl1"
Write-Host "Anzahl der Listenelemente (liste2): $anzahl2"
Write-Host ""

$erstes = $liste1[0]                                       # Erstes und letztes Listenelement ausgeben
$letztes = $liste1[-1]
Write-Host "$erstes - Ich bin das erste Element"
Write-Host "$letztes - Ich bin das letzte Element"
Write-Host ""

$liste3 = @()                                              # leeres feld erzeugen
$liste3 = $liste3 + $liste1 + $liste2                      # feld1 und Feld2 anhängen
Write-Host "Feld 3:"                                       
$liste3
Write-Host ""        
$anzahl3 = $liste3.Count
Write-Host "Anzahl der Listenelemente (liste3): $anzahl3"
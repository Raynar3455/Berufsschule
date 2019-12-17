<#

.DESCRIPTION

     Das Skript erstellt eine Liste aller Prozesse und wertet sie aus.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A11
    Aufgabe: 			aufgabe_ls2_16

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			03.12.2019
    Letzte Änderung:	

#>


Clear-Host

Write-Host "Prozessliste erstellen ..."                    # Prozessliste abspeichern
$liste4 = Get-Process                                      
Write-Host ""

$anzahl = $liste4.Count                                    # Listenlänge bestimmen und ausgeben
Write-Host "Anzahl der Listenelemente (Prozessliste): $anzahl"
Write-Host ""

$anzahl = (Get-Process).Count                              # Listenlänge direkt bestimmen und ausgeben
Write-Host "Anzahl der Listenelemente (direkte Bestimmung mit Cmdlet): $anzahl"
Write-Host ""

Write-Host "Ausgabe verschiedener Listenelemente:"         # Diverse Listenelemete ausgeben
$liste4[0]
$liste4[4]
$liste4[-1]
Write-Host ""

$cpu = $liste4[9].CPU                                      # Zwei Eigenschaften des 10-ten Listenelements ausgeben
$id = $liste4[9].Id
Write-Host "10-tes Listenelement:"         
Write-Host "     CPU: $cpu"   
Write-Host "      Id: $id"   
Write-Host ""


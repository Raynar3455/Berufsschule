<#

.DESCRIPTION

     Das Skript verdoppelt die Werte in einem Feld
     mit einer Pipe und einem Foreach-Object-Cmdlet.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A12
    Aufgabe: 			aufgabe_ls2_17

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			02.12.2019
    Letzte Änderung:	03.12.2019

#>


Clear-Host

$liste5 = @(1,1,2,3,5,8,13)                                # Feld anlegen

Write-Host "Ursprungswerte des Felds"                      # Ursprungsfeld ausgeben
$liste5
Write-Host ""

Write-Host "Verdoppeln der Elementwerte in einer Pipe"     # Werte verdoppeln
$liste5 = $liste5 | ForEach-Object { $_ * 2 } 
Write-Host ""

Write-Host "Neue Werte des Felds"                          # Ursprungsfeld ausgeben
$liste5

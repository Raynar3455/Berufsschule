<#

.DESCRIPTION

     Das Skript zeigt die Dienste an, die gerade laufen und deren Name mit s anfängt.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2a
    Aufgabe: 			aufgabe_ls2_01

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			27.09.2018
    Letzte Änderung:	14.11.2019

#>


Clear-Host                                                                             # Bildschirm löschen

#    | Where-Object { ($_.Status -like "Running") -and ( $_.Name -like "s*" )} `
                                                                                       # laufende Dienste holen und gewünschtes herausfiltern
$laufendeDienste = Get-Service `
    | Where-Object Status -like "Running" `
    | Where-Object Name -like "s*"  `
    | Select-Object -Property Status, Name                      

Write-Output "`nLaufende Dienste, deren Namen mit s anfangen:"                         # Dienste  ausgeben             
Write-Output "---------------------------------------------"
Write-Output $laufendeDienste
Write-Output "`n" 

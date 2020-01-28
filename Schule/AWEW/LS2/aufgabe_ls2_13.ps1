<#

.DESCRIPTION

    Das Skript prüft, ob ein interaktiv zu spezifizierendes Update installiert ist.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A5
    Aufgabe: 			aufgabe_ls2_13

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			22.09.2018
    Letzte Änderung:	24.10.2018

#>


Clear-Host                                                                                 # Bildschirm löschen
               
$rechnername = $env:COMPUTERNAME                                                           # Allgemeine Statusinformationen holen
$benutzername = $env:USERNAME
$zeitpunkt = Get-Date -Format "dd.MM.yyyy HH:mm"

$zupruefenderUpdate = Read-Host -Prompt "Update Name (z.B. KB1234567)"                     # zu prüfenden Update einlesen
$InstallierterUpdate = Get-HotFix -Id $zupruefenderUpdate -ErrorAction SilentlyContinue    # Updates überprüfen
$vorhanden = $?

Write-Output "-------------------------------------------------------`n"                   # Ergebnis ausgeben
Write-Output "Update-Überprüfung"
Write-Output "Rechner:                $rechnername"
Write-Output "Benutzer:               $benutzername"
Write-Output "Zeitpunkt:              $zeitpunkt`n"
Write-output "$zupruefenderUpdate`:              $vorhanden`n"
Write-Output "-------------------------------------------------------`n" 

Write-Output "`n" 

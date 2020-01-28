<#

.DESCRIPTION

    Das Skript überwacht, ob bestimmte Updates installiert sind.
    Welche Updates überprüft werden, wird in einer Datei spezifiziert.
    -
    Lösung mit Pipe-Nutzung.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A5
    Aufgabe: 			aufgabe_ls2_14

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			22.09.2018
    Letzte Änderung:	09.01.2020

#>


Clear-Host                                                                             # Bildschirm löschen

write-output "Informationen sammeln ..."

$rechnername = $env:COMPUTERNAME                                                       # Allgemeine Statusinformationen holen
$benutzername = $env:USERNAME
$zeitpunkt = Get-Date -Format "dd.MM.yyyy HH:mm"

$betriebssystem = (get-wmiobject -Class Win32_OperatingSystem).Caption                 # Betriebssysteminformationen holen
$build = (get-wmiobject -Class Win32_OperatingSystem).BuildNumber
$release = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\" -Name ReleaseID).ReleaseId
$updatedDienst = (Get-Service -Name wuauserv).Status

$installiertGesamt = Get-HotFix | Sort-Object InstalledOn                                                                # aktuell installierte Updates holen 
$InstallierteUpdateListe = (Get-HotFix).HotFixID                                                                         
$zupruefendeUpdateListe = Get-Content -Path "Z:\Schule\FISI-AWEW (LF6)\Aufgaben\aufgabe_ls2_14_update.txt"               # zu prüfende Updates holen

                                                                                       # Einzelupdates auswerten
$nichtInstalliert = ( Compare-Object -ReferenceObject $InstallierteUpdateListe -DifferenceObject $zupruefendeUpdateListe -IncludeEqual `
                    | Where-Object { $_.SideIndicator -like "=>"}).InputObject
$anzahlNichtInstalliert = ($nichtInstalliert | Measure-Object).Count
$installiert = ( Compare-Object -ReferenceObject $InstallierteUpdateListe -DifferenceObject $zupruefendeUpdateListe -IncludeEqual `
               | Where-Object { $_.SideIndicator -like "=="}).InputObject
$anzahlInstalliert = ($installiert | Measure-Object).Count

$UpdateSession = New-Object -ComObject Microsoft.Update.Session                        # Verfügbare nicht installierte Updates besorgen
$UpdateSearcher = $UpdateSession.CreateUpdateSearcher()
$verfuegbar = $UpdateSearcher.Search("IsHidden=0 and IsInstalled=0").Updates

Write-Output "-------------------------------------------------------`n"               # Allgemeine Statusinformationen ausgeben
Write-Output "Update-Überprüfung"
Write-Output "Rechner:                $rechnername"
Write-Output "Benutzer:               $benutzername"
Write-Output "Zeitpunkt:              $zeitpunkt`n"
Write-Output "-------------------------------------------------------`n" 

Write-Output "-------------------------------------------------------`n"               # Betriebssysteminformationen ausgeben
Write-Output "Betriebssystemdetails:"
Write-Output "Betriebssystem:         $betriebssystem"
Write-Output "Release:                $release"
Write-Output "Build Number:           $build"
Write-Output "Update Dienst:          $updatedDienst`n"
Write-Output "-------------------------------------------------------`n" 

Write-Output "-------------------------------------------------------"                 # Einzelüberprüfungen ausgeben
Write-Output "Einzelüberprüfung von Updates:`n"

Write-Output "Nicht installierte Updates der Prüfliste:"
Write-Output $nichtInstalliert
Write-Output "Anzahl nicht installierter Updates: $anzahlNichtInstalliert`n"

Write-Output "Installierte Updates der Prüfliste::"
Write-Output $installiert
Write-Output "Anzahl installierter Updates: $anzahlInstalliert`n"

Write-Output "-------------------------------------------------------`n"

Write-Output "-------------------------------------------------------`n"                # Installierte Updates ausgeben
Write-Output "Installierte Updates insgesamt:"
$installiertGesamt
Write-Output "`n-------------------------------------------------------`n"

Write-Output "-------------------------------------------------------`n"                # Verfügbare nicht installierte Updates ausgeben
Write-Output "Verfügbare nicht installierte Updates:"
$verfuegbar | Select-Object title
Write-Output "`n-------------------------------------------------------`n"

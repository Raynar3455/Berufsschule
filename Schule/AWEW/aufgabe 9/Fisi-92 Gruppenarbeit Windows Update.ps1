<#

.DESCRIPTION

     Das Skript zeigt, wie man vorgehen müsste, wenn sie ein Window-Client-System auf dem neusten Stand halten
     möchten.
     1.Herrausfinden welches Betriebssystem genutzt wird.
     2.Welche updates bestehen bereits

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A9
    Aufgabe: 			aufgabe_ls2_09

    Name:				Gruppenarbeit Fisi-92
    Organisaion:		BK-GuT

    Erstellt:			09.12.2019
    Letzte Änderung:	16.12.2019

#>


Clear-Host 
                                                                            # Bildschirm löschen
                                                                            # Theoretisches
Write-Output "`n
              - 2015 die erste Windows-10-Version                           
              - seitdem mittlerweile acht Windows-10-Versionen
              - Update-Strategie: Windows-as-a-Service --> Zwei große Updates im Jahr und mehrere Hotfixes und Security Updates je nach bedarf
              - Kein Windows 11 mehr, sondern durch Updates wird das bestehende Systrem stetig weiterentwickelt
              - aktuell: Version 1909. 09: datiert den Zeitpunkt, an dem die Entwickler dieser Aktualisierung abgeschlossen haben. Wird aber das Windows 10 November 2019 Update genannt."

Write-Output "----------------------------------------------------`n"


Write-Output "Welches Betriebssystem wird genutzt? `n"                                 # Informationen zum Betriebssystem und der letzten updates in eine Variable legen.
$Betriebssystem = (Get-WmiObject win32_operatingsystem).caption
$Updatesbestehend = Get-Hotfix | sort InstalledOn  
                                                                                       
                                                                                       
                                                                                        # Herausfinden, welche Updates bereits installiert wurden, und welches Betriebssystem genutzt wird

Write-Output "Dazu nutzt man den Befehl: `n"
Write-Output "(Get-WmiObject win32_operatingsystem).caption"
Write-Output "----------------------------------------------------`n"
Write-Output " Ausgabe:     $Betriebssystem `n"
Write-Output "----------------------------------------------------`n"
Write-Output "2. Welche Updates bestehen bereits?"
Write-Output "Dazu benutzt man den Befehl: `n"
Write-Output "Get-Hotfix | sort Installedon `n"
Write-Output "----------------------------------------------------`n"
Write-Output "Ausgabe: "
Get-Hotfix | sort Installedon

                                                                                                        # Fals Windows 10 Installiert wurde, kann die ReleaseId aufgerufen werden
Write-Output "----------------------------------------------------`n"
Write-Output "Welche aktuelle Update version besteht auf dem Windows 10 Betriebssystem?"
Write-Output "Dazu benutzt man den Befehl: `n"
Write-Output "(Get-ItemProperty -Path ‘HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion’).ReleaseId `n"
Write-Output "Ausgabe: `n"
(Get-ItemProperty -Path ‘HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion’).ReleaseId
<#

.DESCRIPTION

     Das Skript zeigt, wie viele Dateien mit welcher Endung in dem Windows-Verzeichnis (rekursiv)
     sind. Angegeben werden neben der Endung (Dateityp) auch die jeweilige Anzahl und die 
     jeweilige Gesamtgröße.

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2g
    Aufgabe: 			aufgabe_ls2_07

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			04.12.2018
    Letzte Änderung:	06.12.2018

#>


Clear-Host                                                                             # Bildschirm löschen

$windowsVerzeichnis = "F:\"                                                            # In Windows-Verzeichnis wechseln
Push-Location -Path $windowsVerzeichnis                                                      

Write-Output "Informationen beschaffen (kann etwas dauern) ...`n"                      # Informationen besorgen
$dateienListe = Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue `
     | Group-Object -Property extension                             
                                      
$anzahlTypen = $dateienListe.Count                                                       # Informationsdetails herauskristallisieren

Write-Output "Dateitypen, Anzahl und Größe im Windows-Verzeichnis:"                    # Informationen ausgeben
Write-Output "----------------------------------------------------`n"
Write-Output "Anzahl verschiedener Dateitypen:      $anzahlTypen`n"
Write-Output "Details:`n"
$dateienListe | Select-Object -Property name, count, @{name='xxx';  expression={($_.Group | Measure-Object -Property length -Sum  ).Sum}}

Pop-Location                                                                           # zu Ursprungsverzeichnis zurückkehren
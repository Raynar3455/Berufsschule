<#

.DESCRIPTION

     Das Skript zeigt alle Prozesse, die mehr als 10 MB Arbeitsspeicher belegen.
     Zusätzlich wird angezeigt, wie viel % des gesamten Arbeitsspeiches sie belegen 
     und wieviel % aller Prozesse es sind. 

.NOTES

    Einordnung:			FISI-LF6-LS2-AB1-A2h
    Aufgabe: 			aufgabe_ls2_08

    Name:				Markus Breuer
    Organisaion:		BK-GuT

    Erstellt:			06.12.2018
    Letzte Änderung:	

#>


Clear-Host                                                                             # Bildschirm löschen

$prozessListe = Get-Process                                                            # Prozesse und Größe Arbeitsspeicher besorgen
$hauptspeicher = Get-WmiObject -Class Win32_physicalmemory  
$hauptspeicherGesamt = $((($hauptspeicher).Capacity | Measure-Object -Sum).Sum/1GB)

$prozessGesamtanzahl = $prozessListe.Count                                             # Benötigte Detailinformation herauskristallisieren
$prozessListe10MB = $prozessListe `
     | Where-Object WorkingSet -ge 10MB `
     | Sort-Object -Property WorkingSet -Descending
$prozessGesamtanzahl10MB = $prozessListe10MB.Count
$prozessProzent = [math]::round($prozessGesamtanzahl10MB /$prozessGesamtanzahl *100, 2)
$hauptspeicher10MB = [math]::round(($prozessListe10MB | Measure-Object -Property WorkingSet -Sum).sum / 1GB, 2)
$hauptspeicherProzent = [math]::round($hauptspeicher10MB /$hauptspeicherGesamt *100, 2)
 
Write-Output "Prozesse, die mehr als 10% Arbeitsspeicher belegen:"                     # Informationen ausgeben
Write-Output "---------------------------------------------------`n"

Write-Output "Gesamtanzahl aller Prozesse:                        $prozessGesamtanzahl"  
Write-Output "Anzahl Prozesse mit mehr als 10 MB Arbeitsspeicher: $prozessGesamtanzahl10MB" 
Write-Output "Prozentualer Anteil:                                $prozessProzent %`n" 

Write-Output "Größe Arbeitsspeicher:                                             $hauptspeicherGesamt (GB)"  
Write-Output "Von Prozesse mit mehr als 10 MB Arbeitsspeicher belegter Speicher: $hauptspeicher10MB (GB)" 
Write-Output "Prozentualer Anteil:                                               $hauptspeicherProzent %`n" 

Write-Output $prozessListe10MB
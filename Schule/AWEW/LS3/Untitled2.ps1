<#

.DESCRIPTION
        Beispielskrit für Kontrollstrukteuren. Enthält:
        - WHILE-Schleife
        - SWITCH-Statement

.NOTES

	Inhalt:
		Einordnung:			FISI-LF6-LS3
		Projekt: 			beispiel_ls3_02
		Thema:				Beispielskript - Überlebensskript

	Autor:
		Name:				Markus Breuer
		Organisaion:		BK-GuT

	Datum:
		Erstellt:			24.07.2018
		Letzte Änderung:	22.01.2019

#>

[int] $restMinuten = 48

Clear-Host

Write-Output "Überlebens-Skript für eine Doppelstunde`n"

while( $restMinuten -gt 0) {
    switch( $restMinuten) {
        {$restMinuten -ge 60} { $spruch = "Durchhalten" }
        {($restMinuten -lt 60) -and ($restMinuten -ge 45)} { $spruch = "Es wird zäh" }
        {($restMinuten -lt 45) -and ($restMinuten -ge 15)} { $spruch = "Licht am Ende des Tunnels" }
        {($restMinuten -lt 15) -and ($restMinuten -ge 10)} { $spruch = "Überlebt; langsam aufwachen" }
        {($restMinuten -lt 10) -and ($restMinuten -ge 5)}  { $spruch = "Überlebt; Packen" }
        }
    Write-Output "Noch $restMinuten Minuten bis zum Ende - $spruch"
    Start-Sleep -Seconds 300                                                            # für realistische Anwendung auf 300 s  = 5 min setzen
    $restMinuten = $restMinuten - 5
    }
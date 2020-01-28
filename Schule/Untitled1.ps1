<#

.DESCRIPTION
        Beispielskrit für Kontrollstrukteuren. Enthält:
        - FOREACH-Schleife
        - IF-Statement

.NOTES

		Einordnung:			FISI-LF6-LS3
		Projekt: 			beispiel_ls3_01
		Thema:				Beispielskript - Liste der laufenden und nicht laufenden Dienste

	Autor:
		Name:				Markus Breuer
		Organisaion:		BK-GuT

	Datum:
		Erstellt:			24.07.2018
		Letzte Änderung:	22.01.2019
#>

[int] $anzahlLaufend = 0                                                # Variablen zum Zählen der laufenden und nicht laufenden Dienste
[int] $anzahlNichtLaufend = 0

Clear-Host

Write-Host "Liste der laufenden und nicht laufenden Dienste"
Write-Host "-----------------------------------------------"
Write-Host -ForegroundColor Green "(laufenden Dienste: grün)"
Write-Host -ForegroundColor Red   "(nicht laufende Dienste: rot)"
Write-Host "-----------------------------------------------`n"

$diensteListe = Get-Service | Sort-Object -Property Name                # Dienste holen und sortieren

foreach( $dienst in $diensteListe) {                                    # Dienste anzeigen, je nach Status eingefärbt + Anzahl zählen
    if( ($dienst).Status -eq "Running") {
        $farbe = "Green"
        $anzahlLaufend++
        }
    else {
        $farbe = "Red"
        $anzahlNichtLaufend++
        }
    Write-Host -ForegroundColor $farbe ($dienst).DisplayName
    }

Write-Host "`n"                                                         # Anzahl ausgeben
Write-Host "Anzahl der laufenden und nicht laufenden Dienste"
Write-Host "-----------------------------------------------"
Write-Host -ForegroundColor Green "Laufenden Dienste: $anzahlLaufend"
Write-Host -ForegroundColor Red   "Nicht laufende Dienste: $anzahlNichtLaufend"
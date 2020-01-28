
[int] $anzahlLaufend = 0                                                # Variablen zum Zählen der laufenden und nicht laufenden Dienste
[int] $anzahlNichtLaufend = 0

Clear-Host

Write-Host "Liste der laufenden und nicht laufenden Dienste"
Write-Host "-----------------------------------------------"
Write-Host -ForegroundColor yellow "(laufenden Dienste: grün)"
Write-Host -ForegroundColor Red   "(nicht laufende Dienste: rot)"
Write-Host "-----------------------------------------------`n"

$diensteListe = Get-Service | Sort-Object -Property Name                # Dienste holen und sortieren

foreach( $dienst in $diensteListe) {                                    # Dienste anzeigen, je nach Status eingefärbt + Anzahl zählen
    if( ($dienst).Status -eq "Running") {
        $farbe = "yellow"                                                  
        $anzahlLaufend++
        }
    else {
        $farbe = "black"
        $anzahlNichtLaufend++
        }
    Write-Host -ForegroundColor $farbe ($dienst).DisplayName
    }

Write-Host "`n"                                                         # Anzahl ausgeben
Write-Host "Anzahl der laufenden und nicht laufenden Dienste"
Write-Host "-----------------------------------------------"
Write-Host -ForegroundColor yellow "Laufenden Dienste: $anzahlLaufend"
Write-Host -ForegroundColor blue   "Nicht laufende Dienste: $anzahlNichtLaufend"
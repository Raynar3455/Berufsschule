[int] $restMinuten = 90

Clear-Host

Write-Output "Überlebens-Skript für eine Doppelstunde`n"

while( $restMinuten -gt 0) {
    switch( $restMinuten) {
        {$restMinuten -gt 60} { $spruch = "Durchhalten" }
        {($restMinuten -lt 60) -and ($restMinuten -ge 45)} { $spruch = "Es wird zäh" }
        {($restMinuten -lt 45) -and ($restMinuten -ge 15)} { $spruch = "Licht am Ende des Tunnels" }
        {($restMinuten -lt 15) -and ($restMinuten -ge 10)} { $spruch = "Überlebt; langsam aufwachen" }
        {($restMinuten -lt 10) -and ($restMinuten -ge 5)}  { $spruch = "Überlebt; Packen" }
        }
    Write-Output "Noch $restMinuten Minuten bis zum Ende - $spruch"
    Start-Sleep -Seconds 5                                                             # für realistische Anwendung auf 300 s  = 5 min setzen
    $restMinuten = $restMinuten - 5
    }
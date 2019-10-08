while ($true) {
    clear-host
    Write-Host "Hallo"
    $berechnen = read-host "Berechnung mit j"
    if( $berechnen -eq 'j')  {
        write-host "Hier kommt eine Berechnung"
        Start-Sleep -Seconds 2
        }
    write-host "Weiter gehts"
    Start-Sleep -Seconds 2
    $ende = read-host "Nochmal mit j"
    if( $ende -ne 'j') {
        break
        }
}
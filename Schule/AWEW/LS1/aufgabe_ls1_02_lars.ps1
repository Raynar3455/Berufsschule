
$i = 1
while($i -le 3) {
    Clear-Host
    [int]$Zahl1 = Read-Host "Gebe eine Zahl ein"
    clear-host
    [int]$Zahl2 = Read-Host "Gebe eine zweite Zahl ein"
    clear-host
    [int]$Summe = $Zahl1 + $Zahl2
    [int]$Differenz = $Zahl1 - $Zahl2
    [int]$Produkt = $Zahl1 * $Zahl2
    Write-Host "Summe: $Summe"
    Write-Host "Differenz: $Differenz"
    Write-Host "Produkt: $Produkt"
    Start-Sleep -Seconds 2
    $i++
    }
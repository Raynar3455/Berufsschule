Clear-Host
Write-Host "Geben Sie zwei Zahlen ein" -ForegroundColor Red
Write-Host "Wählen Sie eine der vier möglichen Rechenoperationen aus:" -ForegroundColor Green


$Zahl1 = Read-Host "Bitte geben Sie die erste Zahl ein" 
$Zahl2 = Read-Host "Bitte geben Sie die zweite Zahl ein"
[int]$Eingabe = Read-Host "Wählen Sie eine Rechenoperation"


	switch ($Eingabe) {
1 {$Ergebnis = $Zahl1 / $Zahl2}
2 {$Ergebnis = $Zahl1 + $Zahl2}
3 {$Ergebnis = $Zahl1 - $Zahl2}
4 {$Ergebnis = $Zahl1 * $Zahl2}
5 {$Ergebnis = $Zahl1 * $zahl2 * $zahl1 + 200 *$Zahl2}
}

Write-Host $Ergebnis
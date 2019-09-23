clear-host
while($true) {
[String]$wochenende = read-host "Hoch die Hände,"
if($wochenende -like "Wochenende") {
while($true) {
write-host "HOCH DIE HÄNDE
WOCHENENDE!"
}
}
else 
{
write-host "Try again"
}
start-sleep -seconds 1
clear-host
}

clear-host
while($true) {
[String]$wochenende = read-host "Hoch die H�nde,"
if($wochenende -like "Wochenende") {
while($true) {
write-host "HOCH DIE H�NDE
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

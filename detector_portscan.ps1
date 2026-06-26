$tracker=@{}

while($true){

Get-NetTCPConnection | ForEach-Object{

$ip=$_.RemoteAddress

if(!$tracker.ContainsKey($ip)){
$tracker[$ip]=0
}

$tracker[$ip]++

if($tracker[$ip] -gt 25){

Write-Host "PORT SCAN SUSPEITO: $ip" -ForegroundColor Red

}

}

Start-Sleep 4

}
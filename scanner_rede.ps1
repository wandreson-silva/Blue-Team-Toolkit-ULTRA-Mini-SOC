$rede = Read-Host "Digite rede (ex: 192.168.0)"

1..254 | ForEach-Object{

$ip="$rede.$_"

if(Test-Connection $ip -Count 1 -Quiet){

Write-Host "Host ativo: $ip" -ForegroundColor Green

}

}
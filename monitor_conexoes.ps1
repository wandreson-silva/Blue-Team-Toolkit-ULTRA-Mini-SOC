while($true){

Clear-Host

Write-Host "MONITOR AVANCADO DE CONEXOES" -ForegroundColor Green
Write-Host "Atualizacao: $(Get-Date)"
Write-Host ""

Get-NetTCPConnection |
Select LocalAddress,LocalPort,RemoteAddress,RemotePort,State |
Sort LocalPort |
Format-Table

Start-Sleep 5

}
$log="logs\conexoes_$(Get-Date -Format yyyyMMdd_HHmm).txt"

Get-NetTCPConnection | Out-File $log

Write-Host "Log salvo em $log"
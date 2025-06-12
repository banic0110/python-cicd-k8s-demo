Write-Host "Ejecutando Hola Mundo en paralelo..."
1..10 | ForEach-Object {
    Start-Job { Write-Host "Hola Mundo $_ desde proceso $PID" }
}
Get-Job | Wait-Job
Get-Job | Receive-Job

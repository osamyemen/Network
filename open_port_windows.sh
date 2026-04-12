netsh advfirewall set allprofiles state off # run this as root on cmd

# run this as root on powershell
$ports = 1..100
foreach ($port in $ports) {
    try {
        $listener = [System.Net.Sockets.TcpListener]$port
        $listener.Start()
        Write-Host "Port $port is now Open" -ForegroundColor Green
    } catch {
        Write-Host "Port $port is busy or access denied" -ForegroundColor Yellow
    }
}
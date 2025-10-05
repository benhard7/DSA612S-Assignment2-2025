
Write-Host "Smart Ticketing System - Test Script" -ForegroundColor White
Write-Host "====================================" -ForegroundColor Gray
Write-Host ""


Write-Host "1. Docker Containers:" -ForegroundColor Gray
docker-compose ps
Write-Host ""


Write-Host "2. Service Endpoints:" -ForegroundColor Gray
$services = @(8080, 8081, 8082, 8083, 8084, 8085)

foreach ($port in $services) {
    Write-Host "Testing port $port..." -NoNewline
    try {
        $response = Invoke-WebRequest -Uri "http://localhost:$port" -TimeoutSec 3
        Write-Host " Online" -ForegroundColor Green
    } catch {
        Write-Host " Offline" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "System test completed" -ForegroundColor Gray

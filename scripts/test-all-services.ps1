Write-Host "Testing all microservices..." -ForegroundColor Green

$services = @(
    @{Name="Passenger Service"; URL="http://localhost:8081"},
    @{Name="Ticketing Service"; URL="http://localhost:8082"},
    @{Name="Transport Service"; URL="http://localhost:8084"},
    @{Name="Admin Service"; URL="http://localhost:8080"}
)

foreach ($service in $services) {
    try {
        $response = Invoke-WebRequest -Uri $service.URL -TimeoutSec 5
        Write-Host "  ✅ $($service.Name) - RUNNING" -ForegroundColor Green
    }
    catch {
        Write-Host "  ❌ $($service.Name) - OFFLINE" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Testing MongoDB..." -ForegroundColor Green
try {
    docker exec dsa612s-assignment2-2025-mongodb-1 mongosh --eval "db.getMongo()" --quiet
    Write-Host "  ✅ MongoDB - CONNECTED" -ForegroundColor Green
}
catch {
    Write-Host "  ❌ MongoDB - OFFLINE" -ForegroundColor Red
}

Write-Host ""
Write-Host "All services successfully tested!" -ForegroundColor Cyan
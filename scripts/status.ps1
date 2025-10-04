
Write-Host "Smart Ticketing System Status" -ForegroundColor Cyan
Write-Host "=============================" -ForegroundColor Cyan

docker compose ps

Write-Host "`nService Endpoints:" -ForegroundColor Yellow
Write-Host "  Passenger:   http://localhost:8081" -ForegroundColor White
Write-Host "  Ticketing:   http://localhost:8082" -ForegroundColor White
Write-Host "  Transport:   http://localhost:8084" -ForegroundColor White
Write-Host "  Admin:       http://localhost:8080" -ForegroundColor White
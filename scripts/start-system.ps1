Write-Host "Starting Smart Ticketing System..." -ForegroundColor Green


docker compose up -d

Write-Host "Waiting for services to start..." -ForegroundColor Yellow
Start-Sleep -Seconds 10

Write-Host "System started successfully!" -ForegroundColor Green
Write-Host "`nServices running on:" -ForegroundColor Cyan
Write-Host "  Passenger Service:   http://localhost:8081" -ForegroundColor White
Write-Host "  Ticketing Service:   http://localhost:8082" -ForegroundColor White
Write-Host "  Transport Service:   http://localhost:8084" -ForegroundColor White
Write-Host "  Admin Service:       http://localhost:8080" -ForegroundColor White
Write-Host "  Kafka:               localhost:9092" -ForegroundColor White
Write-Host "  MongoDB:             localhost:27017" -ForegroundColor White

Write-Host "`nUse 'docker compose ps' to check status" -ForegroundColor Yellow

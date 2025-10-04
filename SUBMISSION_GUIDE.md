# Command 1: Show running containers
docker compose ps

# Command 2: Show service URLs
Write-Host "Service URLs:" -ForegroundColor Yellow
Write-Host "Passenger:  http://localhost:8081"
Write-Host "Ticketing:  http://localhost:8082"
Write-Host "Transport:  http://localhost:8084" 
Write-Host "Admin:      http://localhost:8080"
Write-Host "MongoDB:    localhost:27017"

# Command 3: Test services
curl http://localhost:8081
curl http://localhost:8082
curl http://localhost:8084
curl http://localhost:8080
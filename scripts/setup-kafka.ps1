
Write-Host "Setting up Kafka topics..." -ForegroundColor Green


Write-Host "Waiting for Kafka to be ready..." -ForegroundColor Yellow
Start-Sleep -Seconds 20


$topics = @(
    "ticket.requests",
    "payments.processed", 
    "ticket.validations",
    "schedule.updates",
    "user.registrations"
)

foreach ($topic in $topics) {
    Write-Host "Creating topic: $topic" -ForegroundColor Cyan
    docker exec ticketing-kafka kafka-topics --create --bootstrap-server localhost:9092 --topic $topic --partitions 1 --replication-factor 1
}


Write-Host "`nAll Kafka topics:" -ForegroundColor Green
docker exec ticketing-kafka kafka-topics --list --bootstrap-server localhost:9092

Write-Host "`nKafka setup completed!" -ForegroundColor Green


Write-Host "Kafka Setup Script - Smart Ticketing System" -ForegroundColor White
Write-Host "============================================" -ForegroundColor Gray
Write-Host ""

<<<<<<< HEAD
# Wait for Kafka to be ready
Write-Host "Waiting for Kafka to start..." -ForegroundColor Gray
Start-Sleep -Seconds 20

# Test Kafka connection
Write-Host "Testing Kafka connection..." -ForegroundColor Gray
try {
    $result = docker exec dsa612s-assignment2-2025-kafka-1 /opt/kafka/bin/kafka-topics.sh --list --bootstrap-server kafka:9092
    Write-Host "Kafka is running" -ForegroundColor Green
} catch {
    Write-Host "Kafka is not accessible" -ForegroundColor Red
    exit 1
}

# Create Kafka topics
Write-Host ""
Write-Host "Creating Kafka topics..." -ForegroundColor Gray
=======

Write-Host "Waiting for Kafka to be ready..." -ForegroundColor Yellow
Start-Sleep -Seconds 20

>>>>>>> 0d19a24d9a5231bc26f989ea770d53b11dc68a63

$topics = @(
    "passenger.events",
    "ticket.events", 
    "payment.events",
    "transport.events", 
    "notification.events",
    "admin.events"
)

foreach ($topic in $topics) {
    Write-Host "Creating topic: $topic" -ForegroundColor Gray
    docker exec dsa612s-assignment2-2025-kafka-1 /opt/kafka/bin/kafka-topics.sh --create --topic $topic --bootstrap-server kafka:9092 --partitions 3 --replication-factor 1 2>$null
}

<<<<<<< HEAD
Write-Host ""
Write-Host "Kafka setup completed successfully" -ForegroundColor Green
Write-Host "Available topics:" -ForegroundColor Gray
docker exec dsa612s-assignment2-2025-kafka-1 /opt/kafka/bin/kafka-topics.sh --list --bootstrap-server kafka:9092
=======

Write-Host "`nAll Kafka topics:" -ForegroundColor Green
docker exec ticketing-kafka kafka-topics --list --bootstrap-server localhost:9092

Write-Host "`nKafka setup completed!" -ForegroundColor Green
>>>>>>> 0d19a24d9a5231bc26f989ea770d53b11dc68a63

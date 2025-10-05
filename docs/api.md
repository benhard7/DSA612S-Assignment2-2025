
# Passenger Management

Create Passenger

POST http://localhost:8081/passengers
Content-Type: application/json

{
  "name": "John Doe",
  "email": "john@email.com",
  "phone": "+264123456789"
}

Get All Passengers

GET http://localhost:8081/passengers

# Ticket Management

Purchase Ticket

POST http://localhost:8082/tickets
Content-Type: application/json

{
  "passengerId": "PASS123",
  "routeId": "ROUTE456",
  "tripId": "TRIP789",
  "amount": 15.50
}

Validate Ticket

POST http://localhost:8082/tickets/TKT123456/validate

# Payment Processing

Process Payment

POST http://localhost:8083/payments/process
Content-Type: application/json

{
  "ticketId": "TKT123456",
  "amount": 15.50
}

# Transport Management

Create Route

POST http://localhost:8084/routes
Content-Type: application/json

{
  "name": "City Center - Airport",
  "description": "Express route",
  "stops": ["City Center", "Airport"]
}

Create Trip

POST http://localhost:8084/trips
Content-Type: application/json

{
  "routeId": "ROUTE123",
  "departureTime": "2025-10-05T08:00:00Z",
  "arrivalTime": "2025-10-05T08:45:00Z",
  "capacity": 50
}

# System Monitoring

Health Check

GET http://localhost:8080/health

System Overview

GET http://localhost:8080/overview
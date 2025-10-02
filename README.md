
Smart Public Transport Ticketing System

DSA612S - Distributed Systems and Applications - Assignment 2 (2025)

Group Members
- Benhard Amutse - 224061887 
- Zazuvirua Tjijombo - 223049905
- Isack  Teofilus  -  224082760
- [Member 4 Name] - [Student ID] 
- [Member 5 Name] - [Student ID] 

Project Overview
A modern distributed smart public transport ticketing system for buses and trains in Windhoek.

Technology Stack
- Programming Language: Ballerina
- Message Broker: Apache Kafka
- Database: MongoDB
- Containerization: Docker & Docker Compose

Microservices
1. Passenger Service - User management (Port: 8081)
2. Transport Service - Routes and schedules (Port: 8082)
3. Ticketing Service - Ticket lifecycle (Port: 8083)
4. Payment Service - Payment processing (Port: 8084)
5. Notification Service - Real-time notifications (Port: 8085)
6. Admin Service - Administrative functions (Port: 8086)

Quick Start

Clone and run
git clone https://github.com/benhard7/DSA612S-Assignment2-2025.git
cd DSA612S-Assignment2-2025
docker-compose up -d

Documentation
- [System Architecture](docs/architecture.md)
- [API Documentation](docs/api-documentation.md)
- [Setup Guide](docs/setup-guide.md)

# DSA612S Assignment 2 - Submission Summary

## Project: Smart Public Transport Ticketing System

### ✅ Implemented Features

#### 1. Microservices Architecture (6 Services)
- **Passenger Service** (8081) - User management
- **Ticketing Service** (8082) - Ticket lifecycle  
- **Payment Service** - Payment processing
- **Transport Service** (8084) - Routes and schedules
- **Admin Service** (8080) - System administration
- **Notification Service** - Event notifications

#### 2. Technology Stack
- **Containerization**: Docker
- **Orchestration**: Docker Compose
- **Database**: MongoDB
- **Message Broker**: Apache Kafka (event-driven design)
- **Web Servers**: Apache HTTPD

#### 3. Architecture Patterns
- Microservices with clear boundaries
- Event-driven communication design
- Container orchestration
- Service discovery
- Persistent data storage

### 🎯 Assignment Requirements Met

| Requirement | Status | Marks |
|-------------|---------|-------|
| Docker Configuration & Orchestration | ✅ Complete | 20% |
| Database Setup & Schema Design | ✅ Complete | 10% |
| Documentation & Presentation | ✅ Complete | 5% |
| Microservices Architecture | ✅ Demonstrated | (Bonus) |
| Event-Driven Design | ✅ Designed | (Bonus) |

### 🚀 How to Run
1. `docker compose up -d`
2. Access services:
   - Passenger: http://localhost:8081
   - Ticketing: http://localhost:8082  
   - Transport: http://localhost:8084
   - Admin: http://localhost:8080

### 📁 Project Structure
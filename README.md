     
Smart Public Transport Ticketing System
 
DSA612S - Distributed Systems and Applications - Assignment 2 (2025)

Group Members
- Benhard Amutse - 224061887 
- Zazuvirua Tjijombo - 223049905
- Isack  Teofilus  -  224082760
- Hussein Hashili  - 223091227
- Osama K Billawer - 224063804
    
Project Overview
A modern distributed smart public transport ticketing system for buses and trains in Windhoek.

The system supports:  
- **Passengers**: account creation, route browsing, ticket purchase/validation.  
- **Administrators**: route management, service disruption notifications, ticket reports.  
- **Validators**: validate tickets at boarding points.  

---

## 🏗️ System Architecture
### Microservices Implemented
1. **Passenger Service** – user registration/login, manage accounts, view tickets.  
2. **Transport Service** – create/manage routes & schedules.  
3. **Ticketing Service** – ticket lifecycle: `CREATED → PAID → VALIDATED → EXPIRED`.  
4. **Payment Service** – simulate payments and publish payment events.  
5. **Notification Service** – notify passengers about schedule changes & validations.  
6. **Admin Service** – manage routes, disruptions, and reporting.

### Event-driven Communication
- **Kafka Topics**:  
  - `ticket.requests`  
  - `payments.processed`  
  - `schedule.updates`  

### Persistence
- **Database**: MongoDB (stores users, routes, tickets, payments).  

### Orchestration
- **Docker Compose** spins up:  
  - `zookeeper`  
  - `kafka`  
  - `mongodb`  
  - all 6 microservices  

---

## 🚀 Technologies Used
- **Ballerina** – microservice implementation  
- **Apache Kafka** – asynchronous event communication  
- **MongoDB** – database  
- **Docker & Docker Compose** – containerization & orchestration  
- **PowerShell/Shell scripts** – automation and testing  

---

## ⚙️ Setup & Installation
### 1. Prerequisites
Make sure you have installed:  
- [Docker](https://www.docker.com/)  
- [Docker Compose](https://docs.docker.com/compose/)  
- (Optional) [Ballerina](https://ballerina.io/) – if you want to run services outside Docker  

### 2. Clone Repository
```bash
git clone https://github.com/benhard7/DSA612S-Assignment2-2025.git
cd DSA612S-Assignment2-2025-main/DSA612S-Assignment2-2025-main
```
### 3. Build & Start System
```bash
docker-compose up --build
```


Documentation
- [System Architecture](docs/architecture.md)
- [API Documentation](docs/api-documentation.md)
- [Setup Guide](docs/setup-guide.md)

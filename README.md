
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
git clone <your-repo-url>
cd DSA612S-Assignment2-2025-main/DSA612S-Assignment2-2025-main
```


Documentation
- [System Architecture](docs/architecture.md)
- [API Documentation](docs/api-documentation.md)
- [Setup Guide](docs/setup-guide.md)

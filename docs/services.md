
Service Specifications

# Passenger Service

Port: 8081
Responsibilities:

- User registration and login
- Account management
- View passenger tickets

Endpoints:

- POST /passengers - Create new passenger
- GET /passengers - List all passengers
- GET /passengers/{id} - Get passenger details

# Ticketing Service

Port: 8082
Responsibilities:

- Ticket creation and management
- Ticket validation
- Ticket status updates

Endpoints:

- POST /tickets - Create new ticket
- GET /tickets - List all tickets
- POST /tickets/{id}/validate - Validate ticket

# Payment Service

Port: 8083
Responsibilities:

- Process payments
- Confirm transactions
- Handle payment events

Endpoints:

- POST /payments/process - Process payment
- GET /payments/{id} - Get payment status

# Transport Service

Port: 8084
Responsibilities:

- Route management
- Trip scheduling
- Schedule updates

Endpoints:

- POST /routes - Create route
- POST /trips - Create trip
- POST /schedule/update - Update schedule

# Notification Service

Port: 8085
Responsibilities:

- Send passenger notifications
- Handle system alerts
- Manage communication

Endpoints:

- POST /notifications - Send notification
- GET /notifications - Get notification history

# Admin Service

Port: 8080
Responsibilities:

- System monitoring
- Report generation
- Service management

Endpoints:

- GET /health - System health check
- GET /overview - System overview
- GET /reports/{type} - Generate reports
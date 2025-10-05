import ballerina/kafka;

// Kafka producer for ticket events
public isolated function createKafkaProducer() returns kafka:Producer|error {
    kafka:ProducerConfiguration producerConfig = {
        clientId: "ticketing-service-producer",
        acks: "all",
        retryCount: 3
    };
    
    kafka:Producer kafkaProducer = check new (kafka:DEFAULT_URL, producerConfig);
    return kafkaProducer;
}

// Function to publish ticket request events
public isolated function publishTicketRequest(kafka:Producer producer, json ticketRequest) returns error? {
    kafka:ProducerRecord record = {
        topic: "ticket.requests",
        value: ticketRequest.toString()
    };
    
    _ = check producer->send(record);
    log:printInfo("Published ticket request to Kafka: " + ticketRequest.toString());
}
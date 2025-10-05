import ballerina/kafka;

// Kafka consumer for payment processed events
service class TicketKafkaService {
    private final kafka:Consumer kafkaConsumer;
    
    public function init() returns error? {
        kafka:ConsumerConfiguration consumerConfig = {
            groupId: "ticketing-service-group",
            offsetReset: "earliest",
            topics: ["payments.processed"]
        };
        
        self.kafkaConsumer = check new (kafka:DEFAULT_URL, consumerConfig);
    }
    
    remote function onConsumerRecord(kafka:ConsumerRecord[] records) returns error? {
        foreach var record in records {
            json paymentData = check record.value.toString().fromJsonString();
            log:printInfo("Received payment processed event: " + paymentData.toString());
            
            // Update ticket status to PAID
            _ = updateTicketStatus(paymentData.ticketId, "PAID");
        }
        
        // Commit offsets after processing
        _ = check self.kafkaConsumer->commit();
    }
    
    function updateTicketStatus(string ticketId, string status) returns error? {
        // Implement your ticket status update logic here
        log:printInfo("Updating ticket " + ticketId + " to status: " + status);
    }
}
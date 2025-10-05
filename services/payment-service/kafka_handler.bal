import ballerina/kafka;

final kafka:Producer & readonly paymentProducer = check new (kafka:DEFAULT_URL);

// Function to process payments and publish events
public isolated function processPaymentAndPublish(json paymentRequest) returns error? {
    log:printInfo("Processing payment: " + paymentRequest.toString());
    
    // Simulate payment processing
    boolean paymentSuccess = true; // In real scenario, integrate with payment gateway
    
    if paymentSuccess {
        json paymentEvent = {
            paymentId: generatePaymentId(),
            ticketId: paymentRequest.ticketId,
            amount: paymentRequest.amount,
            status: "COMPLETED",
            timestamp: time:utcNow().toString()
        };
        
        kafka:ProducerRecord record = {
            topic: "payments.processed",
            value: paymentEvent.toString()
        };
        
        _ = check paymentProducer->send(record);
        log:printInfo("Published payment success event: " + paymentEvent.toString());
    }
    
    return;
}

import ballerinax/kafka;

service kafka:Service on new kafka:Listener("localhost:9092", {
    groupId: "payment-service",
    topics: ["ticket.requests"]
}) {

    remote function onConsumerRecord(kafka:ConsumerRecord[] records) {
        foreach var record in records {
            // Just log the payment request
            log:printInfo("Received payment request: " + record.value.toString());
        }
    }

}


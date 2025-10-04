
import ballerinax/kafka;

service kafka:Service on new kafka:Listener("localhost:9092", {
    groupId: "notification-service",
    topics: ["ticket.validations", "schedule.updates"]
}) {

    remote function onConsumerRecord(kafka:ConsumerRecord[] records) {
        foreach var record in records {
            log:printInfo("Sending notification: " + record.value.toString());
        }
    }

}


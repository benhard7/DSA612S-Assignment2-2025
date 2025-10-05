import ballerina/kafka;

final kafka:Producer & readonly scheduleProducer = check new (kafka:DEFAULT_URL);

// Function to publish schedule updates
public isolated function publishScheduleUpdate(json scheduleUpdate) returns error? {
    kafka:ProducerRecord record = {
        topic: "schedule.update",
        value: scheduleUpdate.toString()
    };
    
    _ = check scheduleProducer->send(record);
    log:printInfo("Published schedule update: " + scheduleUpdate.toString());
}

// Kafka consumer for schedule updates (for notification service)
service class ScheduleUpdateService {
    private final kafka:Consumer scheduleConsumer;
    
    public function init() returns error? {
        kafka:ConsumerConfiguration consumerConfig = {
            groupId: "notification-service-group",
            offsetReset: "earliest",
            topics: ["schedule.update"]
        };
        
        self.scheduleConsumer = check new (kafka:DEFAULT_URL, consumerConfig);
    }
    
    remote function onConsumerRecord(kafka:ConsumerRecord[] records) returns error? {
        foreach var record in records {
            json scheduleUpdate = check record.value.toString().fromJsonString();
            log:printInfo("Received schedule update: " + scheduleUpdate.toString());
            
            // Trigger notifications to passengers
            _ = sendScheduleUpdateNotifications(scheduleUpdate);
        }
        
        _ = check self.scheduleConsumer->commit();
    }
}
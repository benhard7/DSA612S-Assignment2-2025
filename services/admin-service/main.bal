
import ballerina/http;

service /admin on new http:Listener(8080) {

    resource function get reports/sales() returns json {
        return {
            totalSales: 15000.50,
            ticketsSold: 1000,
            date: "2025-01-15"
        };
    }

    resource function post disruptions(http:Request req) returns json {
        return {
            message: "Service disruption published",
            disruptionId: "D009"
        };
    }

}

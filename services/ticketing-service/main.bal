
import ballerina/http;

service /ticketing on new http:Listener(8082) {

    resource function post tickets(http:Request req) returns json {
        return {
            ticketId: "T001",
            status: "CREATED",
            message: "Ticket created - awaiting payment"
        };
    }

    resource function put tickets/[string ticketId]/validate() returns json {
        return {
            ticketId: ticketId,
            status: "VALIDATED",
            message: "Ticket validated successfully"
        };
    }

    resource function get tickets/[string ticketId]() returns json {
        return {
            ticketId: ticketId,
            passengerId: "P001",
            status: "ACTIVE",
            type: "single"
        };
    }

}


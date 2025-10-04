

import ballerina/http;

service /passenger on new http:Listener(8081) {

    resource function post register(http:Request req) returns json {
        return {
            message: "Passenger registered",
            passengerId: "P001",
            status: "active"
        };
    }

    resource function get passengers/[string passengerId]() returns json {
        return {
            passengerId: passengerId,
            name: "Zazuvirua Jonas",
            email: "jzmutete@gmail.com"
        };
    }

}


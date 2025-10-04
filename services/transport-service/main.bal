
import ballerina/http;

service /transport on new http:Listener(8084) {

    resource function get routes() returns json {
        return [
            {
                routeId: "R001",
                name: "Katutura Black Chain",
                stops: ["Stop A", "Stop B", "Stop C"]
            },
            {
                routeId: "R002", 
                name: "Stop N Shop",
                stops: ["Stop X", "Stop Y", "Stop Z"]
            }
        ];
    }

    resource function post routes(http:Request req) returns json {
        return {
            message: "Route created successfully",
            routeId: "R003"
        };
    }

}



import ballerina/http;
import ballerina/kafka;
import ballerina/sql;
import ballerina/mysql;

configurable string DB_HOST = "localhost";
configurable int DB_PORT = 3306;
configurable string DB_NAME = "transport_db";
configurable string DB_USER = "root";
configurable string DB_PASS = "";

configurable string KAFKA_BOOTSTRAP_SERVERS = "kafka:9092";
configurable string TICKET_REQUEST_TOPIC = "ticket.requests";

mysql:Client dbClient = check new (host = DB_HOST, port = DB_PORT, name = DB_NAME, user = DB_USER, password = DB_PASS);

service /passenger on new http:Listener(8080) {

    resource function post register(http:Request req) returns http:Response {
        
        json payload = check req.getJsonPayload();
        string username = payload.username.toString();
        string passwordHash = payload.password.toString();
        string role = payload.role.toString();

    
        var result = dbClient->execute(`INSERT INTO users (username, password_hash, role) VALUES (?, ?, ?)`,
                                       username, passwordHash, role);
        if result is error {
            return {statusCode: 500, body: "Registration failed"};
        }

        return {statusCode: 201, body: "User registered successfully"};
    }

    resource function post login(http:Request req) returns http:Response {
        json payload = check req.getJsonPayload();
        string username = payload.username.toString();
        string passwordHash = payload.password.toString();

        var result = dbClient->query(`SELECT * FROM users WHERE username = ? AND password_hash = ?`, username, passwordHash);
        if result is error {
            return {statusCode: 500, body: "Login failed"};
        }

        stream<record {}, sql:Error?> userStream = <stream<record {}, sql:Error?>>result;
        record {}? user = check userStream.next();
        if user == () {
            return {statusCode: 401, body: "Invalid credentials"};
        }

        return {statusCode: 200, body: "Login successful"};
    }

}



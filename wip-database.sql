CREATE TABLE
    IF NOT EXISTS airlines (
        airline_id TEXT PRIMARY KEY,
        name TEXT,
        num_employess INT,
        num_planes INT,
    );

CREATE TABLE
    IF NOT EXISTS airports (
        airport_id TEXT PRIMARY KEY,
        name TEXT,
        state TEXT,
        city TEXT,
        latitude REAL,
        longitude REAL
    );

CREATE TABLE
    IF NOT EXISTS airplanes (
        plane_id TEXT PRIMARY KEY,
        plane_type TEXT PRIMARY KEY,
        max_distance REAL,
        capacity REAL,
        dry_weight REAL,
        FOREIGN KEY (airline_id) REFERENCES airlines (airline_id),
    );

CREATE TABLE
    IF NOT EXISTS flights (
        flight_id TEXT PRIMARY KEY,
        start_time TIMESTAMP,
        end_time TIMESTAMP,
        FOREIGN KEY (airplane_id) REFERENCES airplanes (plane_id),
        FOREIGN KEY (start_id) REFERENCES airports (airport_id) PRIMARY KEY,
        FOREIGN KEY (end_id) REFERENCES airports (airport_id) PRIMARY KEY,
    );

CREATE TABLE
    IF NOT EXISTS passengers (
        passenger_id TEXT PRIMARY KEY,
        num_bags INT,
        name STRUCT < fname TEXT,
        lname TEXT,
        midInit TEXT >,
        FOREIGN KEY (flight_id) REFERENCES flights (flight_id),
    );

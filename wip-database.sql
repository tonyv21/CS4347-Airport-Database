CREATE TABLE
    IF NOT EXISTS airlines (
        airline_id TEXT PRIMARY KEY,
        name TEXT,
        num_employess INTEGER,
        num_planes INTEGER
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
        plane_id TEXT,
        plane_type TEXT,
        max_distance REAL,
        capacity REAL,
        dry_weight REAL,
        airline_id TEXT,
        FOREIGN KEY (airline_id) REFERENCES airlines (airline_id),
        PRIMARY KEY (plane_id, plane_type)
    );

CREATE TABLE
    IF NOT EXISTS flights (
        flight_id TEXT,
        start_time TIMESTAMP,
        end_time TIMESTAMP,
        airplane_id TEXT,
        start_id TEXT,
        end_id TEXT,
        FOREIGN KEY (airplane_id) REFERENCES airplanes (plane_id),
        FOREIGN KEY (start_id) REFERENCES airports (airport_id),
        FOREIGN KEY (end_id) REFERENCES airports (airport_id),
        PRIMARY KEY (flight_id, start_id, end_id)
    );

CREATE TABLE
    IF NOT EXISTS passengers (
        passenger_id TEXT PRIMARY KEY,
        num_bags INTEGER,
        fname TEXT,
        lname TEXT,
        midInit CHAR(1),
        flight_id TEXT,
        FOREIGN KEY (flight_id) REFERENCES flights (flight_id)
    );

CREATE TABLE
    IF NOT EXISTS employees (
        employee_id TEXT,
        airline_id INTEGER,
        salary REAL,
        type TEXT,
        fname TEXT,
        lname TEXT,
        midInit CHAR(1),
        license_id TEXT,
        plane_id TEXT,
        FOREIGN KEY (plane_id) REFERENCES airplanes (airplane_id),
        PRIMARY KEY (employee_id, airline_id)
    );

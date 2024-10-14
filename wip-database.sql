CREATE TABLE IF NOT EXISTS airplanes (
    plane_id CHAR(10),
    plane_type VARCHAR(50),
    max_distance REAL CHECK (max_distance > 0),
    capacity INTEGER CHECK (capacity > 0),
    dry_weight REAL CHECK (dry_weight > 0),
    airline_id CHAR(6),
    FOREIGN KEY (airline_id) REFERENCES airlines (airline_id),
    PRIMARY KEY (plane_id, plane_type)
);

CREATE TABLE IF NOT EXISTS airlines (
    airline_id CHAR(6) PRIMARY KEY,
    name VARCHAR(100),
    num_employees INTEGER CHECK (num_employees >= 0),
    num_planes INTEGER CHECK (num_planes >= 0)
);


CREATE TABLE IF NOT EXISTS airports (
    airport_id CHAR(3) PRIMARY KEY,
    name VARCHAR(100),
    state CHAR(2),
    city VARCHAR(100),
    latitude DECIMAL(9, 6),
    longitude DECIMAL(9, 6)
);

CREATE TABLE IF NOT EXISTS flights (
    flight_id VARCHAR(7),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    airplane_id CHAR(10),
    start_id CHAR(3),
    end_id CHAR(3),
    FOREIGN KEY (airplane_id) REFERENCES airplanes (plane_id),
    FOREIGN KEY (start_id) REFERENCES airports (airport_id),
    FOREIGN KEY (end_id) REFERENCES airports (airport_id),
    PRIMARY KEY (flight_id, start_id, end_id)
);

CREATE TABLE IF NOT EXISTS passengers (
    passenger_id CHAR(10) PRIMARY KEY,
    num_bags INTEGER CHECK (num_bags >= 0),
    fname VARCHAR(50),
    lname VARCHAR(50),
    midInit CHAR(1),
    flight_id CHAR(8),
    FOREIGN KEY (flight_id) REFERENCES flights (flight_id)
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id CHAR(10),
    airline_id CHAR(6),
    salary REAL CHECK (salary > 0),
    type VARCHAR(50),
    fname VARCHAR(50),
    lname VARCHAR(50),
    midInit CHAR(1),
    license_id CHAR(10),
    plane_id CHAR(10),
    FOREIGN KEY (plane_id) REFERENCES airplanes (plane_id),
    FOREIGN KEY (airline_id) REFERENCES airlines (airline_id),
    PRIMARY KEY (employee_id, airline_id)
);

CREATE TABLE IF NOT EXISTS airlines (
    airline_id CHAR(6) PRIMARY KEY,
    airline_name VARCHAR(100),
    num_employees INTEGER CHECK (num_employees >= 0),
    num_planes INTEGER CHECK (num_planes >= 0)
);

CREATE TABLE IF NOT EXISTS airplanes (
    plane_id CHAR(10),
    plane_type VARCHAR(50),
    max_distance REAL CHECK (max_distance > 0),
    capacity INTEGER CHECK (capacity > 0),
    dry_weight REAL CHECK (dry_weight > 0),
    airline_id CHAR(6),
    PRIMARY KEY (plane_id, plane_type)
);

CREATE TABLE IF NOT EXISTS airports (
    airport_id CHAR(3) PRIMARY KEY,
    airport_name VARCHAR(100),
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
    PRIMARY KEY (flight_id, start_id, end_id)
);

CREATE TABLE IF NOT EXISTS passengers (
    passenger_id CHAR(10) PRIMARY KEY,
    num_bags INTEGER CHECK (num_bags >= 0),
    fname VARCHAR(50),
    lname VARCHAR(50),
    midInit CHAR(1),
    flight_id VARCHAR(7)
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id CHAR(10),
    airline_id CHAR(6),
    salary REAL CHECK (salary > 0),
    etype VARCHAR(50),
    fname VARCHAR(50),
    lname VARCHAR(50),
    midInit CHAR(1),
    license_id CHAR(10),
    plane_id CHAR(10),
    PRIMARY KEY (employee_id, airline_id)
);

ALTER TABLE airplanes
ADD CONSTRAINT fk_airline FOREIGN KEY (airline_id) REFERENCES airlines (airline_id);

ALTER TABLE flights
ADD CONSTRAINT fk_plane FOREIGN KEY (airplane_id) REFERENCES airplanes (plane_id),
ADD CONSTRAINT fk_start_airport FOREIGN KEY (start_id) REFERENCES airports (airport_id),
ADD CONSTRAINT fk_end_airport FOREIGN KEY (end_id) REFERENCES airports (airport_id);

ALTER TABLE passengers
ADD CONSTRAINT fk_flight FOREIGN KEY (flight_id) REFERENCES flights (flight_id);

ALTER TABLE employees
ADD CONSTRAINT fk_employee_airline FOREIGN KEY (airline_id) REFERENCES airlines (airline_id),
ADD CONSTRAINT fk_employee_plane FOREIGN KEY (plane_id) REFERENCES airplanes (plane_id);

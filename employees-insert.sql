-- fill employee table with tuples
/* table for reference

CREATE TABLE IF NOT EXISTS employees (
    employee_id CHAR(10),
    airline_id CHAR(6),
    salary REAL CHECK (salary > 0),
    etype VARCHAR(50), -- change from type to etype 
    fname VARCHAR(50),
    lname VARCHAR(50),
    midInit CHAR(1),
    license_id CHAR(10),
    plane_id CHAR(10),
    FOREIGN KEY (plane_id) REFERENCES airplanes (plane_id),
    FOREIGN KEY (airline_id) REFERENCES airlines (airline_id),
    PRIMARY KEY (employee_id, airline_id)
);
*/
INSERT INTO employees (employee_id, airline_id, salary, etype, fname, lname, midInit, license_id, plane_id) 
VALUES
    ('E1', 'UA', 85000, 'Pilot', 'John', 'Doe', 'A', 'LIC001', 'A330-1'),
    ('E16', 'UA', 90000, 'Pilot', 'Amelia', 'Garcia', 'P', 'LIC016', 'B767-1'),
    ('E26', 'UA', 60000, 'Flight Attendant', 'Oliver', 'Stone', 'B', NULL, 'B787-1'),
    ('E2', 'AA', 75000, 'Flight Attendant', 'Jane', 'Smith', 'B', NULL, 'A320-1'),
    ('E17', 'AA', 85000, 'Pilot', 'Elijah', 'Martinez', 'Q', 'LIC017', 'A330neo-1'),
    ('E27', 'AA', 65000, 'Flight Attendant', 'Chloe', 'Hall', 'C', NULL, 'B777-1'),
    ('E3', 'DL', 90000, 'Pilot', 'Michael', 'Brown', 'C', 'LIC003', 'A220-1'),
    ('E18', 'DL', 78000, 'Flight Attendant', 'Ethan', 'Rodriguez', 'R', NULL, 'A350-1'),
    ('E28', 'DL', 62000, 'Flight Attendant', 'Lily', 'Evans', 'D', NULL, 'A220-1'),
    ('E4', 'WN', 55000, 'Flight Attendant', 'Emily', 'Davis', 'D', NULL, 'B737-1'),
    ('E19', 'WN', 72000, 'Pilot', 'Mia', 'Lee', 'S', 'LIC019', 'B737-1'),
    ('E8', 'B6', 72000, 'Flight Attendant', 'Sophia', 'Taylor', 'H', NULL, 'EJet-1'),
    ('E23', 'B6', 72000, 'Pilot', 'Ella', 'Clark', 'W', 'LIC023', 'E2-1'),
    ('E14', 'NK', 69000, 'Flight Attendant', 'Charlotte', 'Martin', 'N', NULL, 'ARJ21-1'),
    ('E15', 'AIO', 100000, 'Pilot', 'Lucas', 'Thompson', 'O', 'LIC015', 'An148-1'),
    ('E29', 'AIO', 95000, 'Pilot', 'Henry', 'Wright', 'F', 'LIC029', 'Il96-1');

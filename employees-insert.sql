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
	('E1', 'UA', 85000, 'Pilot', 'John', 'Doe', 'A', 'LIC001', 'KORD'),
	('E2', 'AA', 75000, 'Flight Attendant', 'Jane', 'Smith', 'B', 'LIC002', 'KLAX'),
	('E3', 'DL', 90000, 'Pilot', 'Michael', 'Brown', 'C', 'LIC003', 'KATL'),
	('E4', 'WN', 55000, 'Flight Attendant', 'Emily', 'Davis', 'D', 'LIC004', 'KDFW'),
	('E5', 'CO', 80000, 'Flight Attendant', 'David', 'Miller', 'E', 'LIC005', 'KIAH'),
	('E6', 'NW', 70000, 'Flight Attendant', 'Olivia', 'Wilson', 'F', 'LIC006', 'KDEN'),
	('E7', 'US', 65000, 'Pilot', 'Liam', 'Moore', 'G', 'LIC007', 'KMIA'),
	('E8', 'B6', 72000, 'Flight Attendant', 'Sophia', 'Taylor', 'H', 'LIC008', 'KJFK'),
	('E9', 'ENY', 80000, 'Flight Attendant', 'James', 'Anderson', 'I', 'LIC009', 'KMCO'),
	('E10', 'MQ', 60000, 'Flight Attendant', 'Isabella', 'Thomas', 'J', 'LIC010', 'KSEA'),
	('E11', 'OO', 82000, 'Pilot', 'William', 'Jackson', 'K', 'LIC011', 'KAUS'),
	('E12', 'PI', 78000, 'Flight Attendant', 'Ava', 'White', 'L', 'LIC012', 'KPHX'),
	('E13', 'XE', 75000, 'Flight Attendant', 'Mason', 'Harris', 'M', 'LIC013', 'KTPA'),
	('E14', 'NK', 69000, 'Flight Attendant', 'Charlotte', 'Martin', 'N', 'LIC014', 'KORD'),
	('E15', 'AIO', 100000, 'Pilot', 'Lucas', 'Thompson', 'O', 'LIC015', 'KSEA'),
	('E16', 'UA', 90000, 'Pilot', 'Amelia', 'Garcia', 'P', 'LIC016', 'KMIA'),
	('E17', 'AA', 85000, 'Pilot', 'Elijah', 'Martinez', 'Q', 'LIC017', 'KMCO'),
	('E18', 'DL', 78000, 'Flight Attendant', 'Ethan', 'Rodriguez', 'R', 'LIC018', 'KATL'),
	('E19', 'WN', 72000, 'Pilot', 'Mia', 'Lee', 'S', 'LIC019', 'KDFW'),
	('E20', 'CO', 80000, 'Flight Attendant', 'Benjamin', 'Walker', 'T', 'LIC020', 'KIAH'),
	('E21', 'NW', 70000, 'Flight Attendant', 'Abigail', 'Perez', 'U', 'LIC021', 'KDEN'),
	('E22', 'US', 65000, 'Pilot', 'Alexander', 'Robinson', 'V', 'LIC022', 'KMIA'),
	('E23', 'B6', 72000, 'Pilot', 'Ella', 'Clark', 'W', 'LIC023', 'KJFK'),
	('E24', 'ENY', 85000, 'Pilot', 'Matthew', 'Lewis', 'X', 'LIC024', 'KLAX'),
	('E25', 'MQ', 60000, 'Flight Attendant', 'Sofia', 'Young', 'Y', 'LIC025', 'KSEA');

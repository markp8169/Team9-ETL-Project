create database restaurant_db;

use restaurant_db;

Create table inspections (
serial_number INT PRIMARY KEY,
service_description TEXT
);

Create table violations (
serial_number INT PRIMARY KEY,
facility_name TEXT,
score TEXT,
violation_description TEXT
);

Select * From inspections;

Select vi.serial_number, vi.facility_name, vi.score, vi.violation_description, ins.service_description
FROM inspections ins
JOIN violations vi
ON vi.serial_number = ins.serial_number;
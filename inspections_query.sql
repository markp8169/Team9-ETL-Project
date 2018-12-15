create database restaurant_db;

use restaurant_db;

drop table inspections;
drop table violations;

Create table inspections (
id INT PRIMARY KEY,
serial_number TEXT,
service_description TEXT
);

Create table violations (
id INT PRIMARY KEY,
serial_number TEXT,
activity_date TEXT,
facility_name TEXT,
score TEXT,
violation_description TEXT
);


Select * From inspections;

Select count(*) From violations;

Select vi.serial_number, vi.activity_date, vi.facility_name, vi.score, vi.violation_description, ins.service_description
FROM inspections ins
JOIN violations vi
ON vi.serial_number = ins.serial_number;
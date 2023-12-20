#create database project2;

use project2;

## Drop tables
drop table if exists Price;
drop table if exists Data;
drop table if exists Property_Device;
drop table if exists Devices;
drop table if exists Customer_Property;
drop table if exists Properties;
drop table if exists Customers;

CREATE TABLE Customers (
	cID INT(5) AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
	billing_address VARCHAR(50) NOT NULL,
);
ALTER TABLE Customer AUTO_INCREMENT = 1;


# assuming the values of area are all integers
CREATE TABLE Properties (
	pID INT(5) AUTO_INCREMENT PRIMARY KEY,
	start_date TIMESTAMP NOT NULL,
	address VARCHAR(50) NOT NULL,
	zip_code INT(5) NOT NULL,
	unit_number INT(5) NOT NULL,
	area INT(5) NOT NULL,
	n_bedroom INT(5) NOT NULL,
	n_occupants  INT(5) NOT NULL,
    active BOOLEAN DEFAULT true
);
ALTER TABLE Properties AUTO_INCREMENT = 1;

CREATE TABLE Customer_Property (
	cID INT(5),
	pID INT(5),
	PRIMARY KEY (cID, pID),
	FOREIGN KEY (cID) REFERENCES Customers(cID),
	FOREIGN KEY (pID) REFERENCES Properties(pID)
);

CREATE TABLE Devices (
	deviceID INT(5) AUTO_INCREMENT PRIMARY KEY,
	type VARCHAR(20) NOT NULL,
	model VARCHAR(50) NOT NULL
);
ALTER TABLE Devices AUTO_INCREMENT = 1;

CREATE TABLE Property_Device (
	pID INT(5),
	deviceID INT(5),
	PRIMARY KEY (pID, deviceID),
	FOREIGN KEY (pID) REFERENCES Properties(pID),
	FOREIGN KEY (deviceID) REFERENCES Devices(deviceID)
);

CREATE TABLE Data (
	deviceID INT(5),
	report_time TIMESTAMP NOT NULL,
	event_label VARCHAR(20) NOT NULL,
	value DECIMAL(8, 2),
	PRIMARY KEY (deviceID, report_time, event_label),
	FOREIGN KEY (deviceID) REFERENCES Devices(deviceID)
);

CREATE TABLE Price (
	am BOOLEAN NOT NULL,
	weekend BOOLEAN NOT NULL,
	zip_code INT(5) NOT NULL,
	price_value DECIMAL(8, 2) NOT NULL,
	PRIMARY KEY (am, weekend, zip_code)
);
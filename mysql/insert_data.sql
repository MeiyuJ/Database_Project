## Insert Data
INSERT INTO Customers(name, email, password, billing_address) VALUES('John Smith', 'john@domain.com', 'password', '1400 Defense Pentagon, Arlington, VA');
INSERT INTO Customers(name, email, password, billing_address) VALUES('Frank Fan', 'frank@domain.com', 'password', '4500 Centre Ave, Pittsburgh, PA');
INSERT INTO Customers(name, email, password, billing_address) VALUES('Larry Chen', 'larry@domain.com', 'password', '2368 Attack Street, Brooklyn, NY');



INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) VALUES('2000-08-27', '1400 Defense Pentagon, Arlington, VA', 20301, 508, 1024, 2, 3);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) VALUES('2014-08-27', '4500 Centre Ave, Pittsburgh, PA', 15213, 917, 2000, 4, 5);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2015-09-15', '123 Maple St, Philadelphia, PA', 22306 , 203, 1000, 3, 4);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2016-07-20', '987 Oak Rd, Lancaster, PA', 20301, 305, 987, 2, 3);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2017-03-31', '562 Pine Ave, Harrisburg, PA', 15213, 408, 1946, 3, 2);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2018-01-10', '250 Elm St, Allentown, PA', 15213, 510, 960, 1, 1);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2018-12-05', '321 Birch Way, Scranton, PA', 20301, 612, 2053, 4, 6);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2019-04-23', '654 Cedar Blvd, York, PA', 15213, 714, 1994, 3, 4);

INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
VALUES('2020-08-19', '789 Willow Rd, Erie, PA', 15213, 816, 1000, 2, 3);

INSERT INTO Customer_Property(cID, pID) VALUES(1, 1);
INSERT INTO Customer_Property(cID, pID) VALUES(1, 2);
INSERT INTO Customer_Property(cID, pID) VALUES(1, 3);
INSERT INTO Customer_Property(cID, pID) VALUES(2, 4);
INSERT INTO Customer_Property(cID, pID) VALUES(2, 5);
INSERT INTO Customer_Property(cID, pID) VALUES(2, 6);
INSERT INTO Customer_Property(cID, pID) VALUES(3, 7);
INSERT INTO Customer_Property(cID, pID) VALUES(3, 8);
INSERT INTO Customer_Property(cID, pID) VALUES(3, 9);

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Devices(type, model) VALUES('refrigerator', 'Boeing 777-300er');
INSERT INTO Devices(type, model) VALUES('AC', 'LG 2333');
INSERT INTO Devices(type, model) VALUES('laptop', 'macbook pro');

INSERT INTO Property_Device(pID, deviceID) VALUES(1, 1);
INSERT INTO Property_Device(pID, deviceID) VALUES(1, 2);
INSERT INTO Property_Device(pID, deviceID) VALUES(1, 3);

INSERT INTO Property_Device(pID, deviceID) VALUES(2, 4);
INSERT INTO Property_Device(pID, deviceID) VALUES(2, 5);
INSERT INTO Property_Device(pID, deviceID) VALUES(2, 6);

INSERT INTO Property_Device(pID, deviceID) VALUES(3, 7);
INSERT INTO Property_Device(pID, deviceID) VALUES(3, 8);
INSERT INTO Property_Device(pID, deviceID) VALUES(3, 9);

INSERT INTO Property_Device(pID, deviceID) VALUES(4, 10);
INSERT INTO Property_Device(pID, deviceID) VALUES(4, 11);
INSERT INTO Property_Device(pID, deviceID) VALUES(4, 12);

INSERT INTO Property_Device(pID, deviceID) VALUES(5, 13);
INSERT INTO Property_Device(pID, deviceID) VALUES(5, 14);
INSERT INTO Property_Device(pID, deviceID) VALUES(5, 15);

INSERT INTO Property_Device(pID, deviceID) VALUES(6, 16);
INSERT INTO Property_Device(pID, deviceID) VALUES(6, 17);
INSERT INTO Property_Device(pID, deviceID) VALUES(6, 18);

INSERT INTO Property_Device(pID, deviceID) VALUES(7, 19);
INSERT INTO Property_Device(pID, deviceID) VALUES(7, 20);
INSERT INTO Property_Device(pID, deviceID) VALUES(7, 21);

INSERT INTO Property_Device(pID, deviceID) VALUES(8, 22);
INSERT INTO Property_Device(pID, deviceID) VALUES(8, 23);
INSERT INTO Property_Device(pID, deviceID) VALUES(8, 24);

INSERT INTO Property_Device(pID, deviceID) VALUES(9, 25);
INSERT INTO Property_Device(pID, deviceID) VALUES(9, 26);
INSERT INTO Property_Device(pID, deviceID) VALUES(9, 27);



INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 01:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 02:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 03:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 04:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 05:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 06:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 06:02:00', 'door opened', null);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 07:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 08:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 08:15:00', 'door closed', null);


INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 09:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 10:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 11:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 12:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 13:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 14:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 15:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 16:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 17:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 18:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 19:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 20:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 21:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 22:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-02 23:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 00:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 01:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 02:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 03:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 04:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 05:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 06:00:00', 'energy use', 0.02);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2022-08-03 06:00:00', 'switched off ', null);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2023-08-03 06:00:00', 'switched on ', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2023-08-03 07:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(1, '2023-08-03 08:00:00', 'switched off ', null);



INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 07:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 08:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 08:30:00', 'temp lowered', 70);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 09:00:00', 'energy use', 0.1);


INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 10:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(2, '2022-08-03 11:00:00', 'switched off', null);


INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(3, '2022-08-04 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(3, '2022-08-04 07:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(3, '2022-08-04 08:00:00', 'energy use', 0.02);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(3, '2022-08-04 09:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(3, '2022-08-04 10:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(3, '2022-08-04 11:00:00', 'switched off', null);


INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 01:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 02:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 03:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 04:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 05:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 06:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 06:02:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 07:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 08:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 08:15:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 09:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 10:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 11:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 12:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 13:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 14:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 15:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 16:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 17:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 18:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 19:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 20:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 21:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 22:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-05 23:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 00:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 01:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 02:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 03:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 04:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 05:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(4, '2022-08-06 06:00:00', 'switched off', null);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 07:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 08:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 08:30:00', 'temp lowered', 70);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 09:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 10:00:00', 'energy use', 0.1);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(5, '2022-08-06 11:00:00', 'switched off', null);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(6, '2022-08-07 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(6, '2022-08-07 07:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(6, '2022-08-07 08:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(6, '2022-08-07 09:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(6, '2022-08-07 10:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(6, '2022-08-07 11:00:00', 'switched off', null);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 07:15:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 07:45:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 08:00:00', 'energy use', 0.06);  -- Increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 10:00:00', 'energy use', 0.04);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 10:35:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 11:00:00', 'energy use', 0.06);  -- Increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-24 13:00:00', 'switched off', null);

-- August 30, 2022: Intermittent door operations with hourly energy reports and increased energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 15:10:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 15:40:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 16:00:00', 'energy use', 0.07);  -- Increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(7, '2022-08-30 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened.



-- August 22, 2022: Usage with temperature adjustments and hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 10:30:00', 'temp lowered', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 11:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 12:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 12:30:00', 'temp higher', 24);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-22 15:00:00', 'switched off', null);

-- August 28, 2022: Full day usage with temperature adjustments and hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 10:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 10:30:00', 'temp lowered', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 11:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 12:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 14:30:00', 'temp higher', 25);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 15:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 17:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 18:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-08-28 19:00:00', 'switched off', null);

-- September 05, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 10:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 11:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 12:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 15:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-05 17:00:00', 'switched off', null);

-- September 12, 2022: Evening usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-12 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-12 19:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-12 20:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-12 21:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(8, '2022-09-12 22:00:00', 'switched off', null);






-- Day 1: Switch on in the morning, switch off in the evening
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 09:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 10:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 11:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 13:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 14:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 15:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-10 17:00:00', 'switched off', null);

-- Day 2: Switch on in the afternoon, switch off at night
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 13:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 14:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 15:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 17:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 18:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 19:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(9, '2022-08-11 21:00:00', 'switched off', null);


-- August 25, 2022: Usage with door operations and varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 07:10:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 07:40:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 08:00:00', 'energy use', 0.05);  -- Slightly increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 10:35:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 11:00:00', 'energy use', 0.06);  -- More increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-25 13:00:00', 'switched off', null);

-- August 31, 2022: Intermittent door operations with varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 15:15:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 15:50:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 16:00:00', 'energy use', 0.07);  -- More increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(10, '2022-08-31 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened, especially if opened for more than 30 minutes.




-- August 23, 2022: Full day usage with temperature adjustments and hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 10:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 10:30:00', 'temp lowered', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 11:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 12:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 14:30:00', 'temp higher', 23);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 15:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 17:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-23 18:00:00', 'switched off', null);

-- August 29, 2022: Evening usage with temperature adjustments and hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 17:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 18:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 18:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 19:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 20:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 21:00:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-08-29 22:00:00', 'switched off', null);

-- September 06, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-06 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-06 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-06 11:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-06 15:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-06 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-06 17:00:00', 'switched off', null);

-- September 13, 2022: Morning to afternoon usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 10:00:00', 'temp lowered', 19);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 11:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 13:00:00', 'temp higher', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 13:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 14:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(11, '2022-09-13 15:00:00', 'switched off', null);





-- August 15, 2022: Short usage period
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-15 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-15 10:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-15 11:00:00', 'switched off', null);

-- August 20, 2022: Long usage period
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-20 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-20 09:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-20 10:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-20 11:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-20 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-20 13:00:00', 'switched off', null);

-- August 25, 2022: Intermittent use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-25 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-25 08:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-25 09:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-25 15:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-25 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-08-25 17:00:00', 'switched off', null);

-- September 05, 2022: Evening usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-05 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-05 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-05 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-05 21:00:00', 'switched off', null);

-- September 10, 2022: All day use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-10 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-10 10:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-10 11:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(12, '2022-09-10 11:00:00', 'switched off', null);


-- August 26, 2022: Usage with door operations and varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 07:20:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 07:50:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 08:00:00', 'energy use', 0.06);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 10:25:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 11:00:00', 'energy use', 0.05);  -- Slightly increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-08-26 13:00:00', 'switched off', null);

-- September 01, 2022: Intermittent door operations with varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 15:10:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 15:45:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 16:00:00', 'energy use', 0.07);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(13, '2022-09-01 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened, especially if opened for more than 30 minutes.




-- August 25, 2022: Usage with temperature adjustments and hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 10:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 10:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 11:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 12:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 12:30:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-25 15:00:00', 'switched off', null);

-- August 31, 2022: Full day usage with temperature adjustments and hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 08:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 09:30:00', 'temp lowered', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 10:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 11:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 12:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 13:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 14:00:00', 'temp higher', 23);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 14:00:00', 'energy use', 0.05);

INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 15:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 17:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 18:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-08-31 19:00:00', 'switched off', null);

-- September 07, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 10:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 11:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 12:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 15:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-07 17:00:00', 'switched off', null);

-- September 14, 2022: Evening usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-14 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-14 19:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-14 20:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-14 21:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(14, '2022-09-14 22:00:00', 'switched off', null);


-- August 18, 2022: Morning to afternoon usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-18 09:30:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-18 10:30:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-18 11:30:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-18 12:30:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-18 13:30:00', 'switched off', null);

-- August 22, 2022: Intermittent use throughout the day
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-22 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-22 09:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-22 10:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-22 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-22 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-22 16:00:00', 'switched off', null);

-- August 29, 2022: Evening usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-29 17:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-29 18:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-29 19:00:00', 'energy use', 0.09);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-08-29 20:00:00', 'switched off', null);

-- September 03, 2022: Full day usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 09:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 10:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 11:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 13:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 16:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 17:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 18:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-03 19:00:00', 'switched off', null);

-- September 09, 2022: Late night usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-09 22:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-09 23:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(15, '2022-09-09 00:00:00', 'switched off', null);

-- August 27, 2022: Usage with door operations and varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 07:15:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 07:45:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 08:00:00', 'energy use', 0.06);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 10:20:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 11:00:00', 'energy use', 0.05);  -- Slightly increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-08-27 13:00:00', 'switched off', null);

-- September 02, 2022: Intermittent door operations with varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 15:05:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 15:50:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 16:00:00', 'energy use', 0.07);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(16, '2022-09-02 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened, especially if opened for more than 30 minutes.



-- August 24, 2022: Full day usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 08:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 08:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 10:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 10:30:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 11:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 13:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 16:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-24 17:00:00', 'switched off', null);

-- August 30, 2022: Evening usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 18:30:00', 'temp lowered', 19);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 20:30:00', 'temp higher', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 21:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-08-30 22:00:00', 'switched off', null);

-- September 08, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 11:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 15:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 16:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-08 17:00:00', 'switched off', null);

-- September 15, 2022: Morning to afternoon usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 09:30:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 10:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 11:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 12:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 13:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 14:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(17, '2022-09-15 15:00:00', 'switched off', null);



-- August 17, 2022: Intermittent usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-17 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-17 10:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-17 12:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-17 15:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-17 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-17 18:00:00', 'switched off', null);

-- August 23, 2022: Full day usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 10:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 11:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 14:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 15:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 16:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-23 17:00:00', 'switched off', null);

-- August 30, 2022: Evening usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-30 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-30 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-30 20:00:00', 'energy use', 0.09);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-08-30 21:00:00', 'switched off', null);

-- September 04, 2022: Short morning usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-09-04 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-09-04 08:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-09-04 09:00:00', 'switched off', null);

-- September 12, 2022: Late night usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-09-12 22:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-09-12 23:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(18, '2022-09-12 00:00:00', 'switched off', null);

-- August 28, 2022: Usage with door operations and varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 07:10:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 07:55:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 08:00:00', 'energy use', 0.06);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 10:30:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 11:00:00', 'energy use', 0.05);  -- Slightly increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-08-28 13:00:00', 'switched off', null);

-- September 03, 2022: Intermittent door operations with varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 15:15:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 15:40:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 16:00:00', 'energy use', 0.07);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(19, '2022-09-03 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened, especially if opened for more than 30 minutes.




-- August 26, 2022: Full day usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 08:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 08:45:00', 'temp lowered', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 11:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 11:45:00', 'temp higher', 23);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 12:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 13:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 16:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-08-26 17:00:00', 'switched off', null);

-- September 01, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 10:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 11:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 11:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 14:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 16:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 16:45:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 17:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-01 18:00:00', 'switched off', null);

-- September 09, 2022: Evening usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 18:30:00', 'temp lowered', 19);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 20:45:00', 'temp higher', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 21:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(20, '2022-09-09 22:00:00', 'switched off', null);




-- August 16, 2022: Early morning to noon usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 05:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 06:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 07:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 08:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 10:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-16 11:00:00', 'switched off', null);

-- August 24, 2022: Afternoon to evening usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 12:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 15:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 16:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 17:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-08-24 18:00:00', 'switched off', null);

-- September 01, 2022: Full day usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 08:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 10:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 11:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 12:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 14:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 15:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 16:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-01 17:00:00', 'switched off', null);

-- September 07, 2022: Evening usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-07 19:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-07 20:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-07 21:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-07 22:00:00', 'switched off', null);

-- September 13, 2022: Intermittent use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-13 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-13 10:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-13 12:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-13 15:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-13 16:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(21, '2022-09-13 18:00:00', 'switched off', null);

-- August 29, 2022: Usage with door operations and varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 07:05:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 07:50:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 08:00:00', 'energy use', 0.06);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 10:25:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 11:00:00', 'energy use', 0.05);  -- Slightly increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-08-29 13:00:00', 'switched off', null);

-- September 04, 2022: Intermittent door operations with varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 15:20:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 15:45:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 16:00:00', 'energy use', 0.07);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(22, '2022-09-04 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened, especially if opened for more than 30 minutes.




-- August 27, 2022: Full day usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 08:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 08:45:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 10:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 10:45:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 11:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 12:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 13:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 14:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-08-27 17:00:00', 'switched off', null);

-- September 02, 2022: Evening usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 19:30:00', 'temp lowered', 19);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 21:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 21:30:00', 'temp higher', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-02 22:00:00', 'switched off', null);

-- September 10, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-10 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-10 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(23, '2022-09-10 11:00:00', 'switched off', null);


-- August 19, 2022: Morning usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-19 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-19 07:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-19 08:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-19 09:00:00', 'switched off', null);

-- August 26, 2022: Intermittent usage throughout the day
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-26 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-26 09:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-26 11:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-26 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-26 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-08-26 17:00:00', 'switched off', null);

-- September 02, 2022: Full day usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 08:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 11:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 12:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 13:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 14:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 15:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-02 17:00:00', 'switched off', null);

-- September 08, 2022: Evening usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-08 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-08 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-08 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-08 21:00:00', 'switched off', null);

-- September 14, 2022: Afternoon usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-14 12:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-14 13:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-14 14:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(24, '2022-09-14 15:00:00', 'switched off', null);

-- August 30, 2022: Usage with door operations and varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 06:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 07:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 07:15:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 07:55:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 08:00:00', 'energy use', 0.06);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 09:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 10:00:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 10:35:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 11:00:00', 'energy use', 0.05);  -- Slightly increased due to door opened
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 12:00:00', 'energy use', 0.04);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-08-30 13:00:00', 'switched off', null);

-- September 05, 2022: Intermittent door operations with varied energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 15:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 15:10:00', 'door opened', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 15:55:00', 'door closed', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 16:00:00', 'energy use', 0.07);  -- Increased due to door opened >30 mins
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 17:00:00', 'energy use', 0.05);  -- Normal energy use
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(25, '2022-09-05 18:00:00', 'switched off', null);

-- Note: Energy use is higher for the hours when the door has been opened, especially if opened for more than 30 minutes.





-- August 28, 2022: Full day usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 08:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 08:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 10:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 10:30:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 11:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 12:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 13:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 14:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-08-28 17:00:00', 'switched off', null);

-- September 03, 2022: Evening usage with temperature adjustments not at o'clock
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 18:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 19:00:00', 'energy use', 0.08);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 19:30:00', 'temp lowered', 19);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 20:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 21:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 21:30:00', 'temp higher', 21);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-03 22:00:00', 'switched off', null);

-- September 11, 2022: Intermittent usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 11:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 14:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 15:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 15:30:00', 'temp lowered', 20);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 16:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-11 17:00:00', 'switched off', null);

-- September 16, 2022: Morning to afternoon usage with hourly energy reports
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 08:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 09:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 09:30:00', 'temp higher', 22);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 10:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 11:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 12:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 13:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 14:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(26, '2022-09-16 15:00:00', 'switched off', null);




-- August 21, 2022: Early Morning Usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-08-21 05:30:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-08-21 06:30:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-08-21 07:30:00', 'switched off', null);

-- August 27, 2022: Late Night Usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-08-27 22:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-08-27 23:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-08-28 00:00:00', 'switched off', null);

-- September 03, 2022: Intermittent Usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-03 09:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-03 10:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-03 12:00:00', 'switched off', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-03 15:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-03 16:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-03 18:00:00', 'switched off', null);

-- September 09, 2022: All Day Usage
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 07:00:00', 'switched on', null);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 08:00:00', 'energy use', 0.07);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 09:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 10:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 11:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 12:00:00', 'energy use', 0.03);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 13:00:00', 'energy use', 0.02);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 14:00:00', 'energy use', 0.04);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 15:00:00', 'energy use', 0.05);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 16:00:00', 'energy use', 0.06);
INSERT INTO Data(deviceID, report_time, event_label, value) VALUES(27, '2022-09-09 17:00:00', 'switched off', null);


INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(true, true, 20301, 0.8);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(false, true, 20301, 0.6);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(true, false, 20301, 0.65);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(false, false, 20301, 0.5);

INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(true, true, 22306, 0.7);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(false, true, 22306, 0.5);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(true, false, 22306, 0.55);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(false, false, 22306, 0.38);

INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(true, true, 15213, 0.66);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(false, true, 15213, 0.48);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(true, false, 15213, 0.42);
INSERT INTO Price(am, weekend, zip_code, price_value) VALUES(false, false, 15213, 0.36);
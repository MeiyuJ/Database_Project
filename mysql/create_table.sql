use cs6083;

drop table if exists PowerPricing;
drop table if exists Events;
drop table if exists Devices;
drop table if exists ServiceLocations;
drop table if exists users;

create table users (
    client_id int auto_increment primary key,
    username varchar(100),
    billing_address text,
    password varchar(100),
    email varchar(100) unique
);
alter table users auto_increment = 100;

create table ServiceLocations (
    service_id int auto_increment primary key,
    client_id int,
    building_info varchar(100),
    unit_code int,
    start_date date,
    area_size int,
    bedrooms int,
    occupants int,
    zip_code varchar(10),
    foreign key (client_id) references users(client_id)
);
alter table ServiceLocations auto_increment = 1000;

create table Devices (
    device_id int auto_increment primary key,
    service_id int,
    category varchar(50),
    model_type varchar(50),
    foreign key (service_id) references ServiceLocations(service_id)
);
alter table Devices auto_increment = 10000;

create table Events (
    event_id int auto_increment primary key,
    device_id int,
    event_time datetime,
    event_type varchar(100),
    event_data decimal(12, 4),
    foreign key (device_id) references Devices(device_id)
);
alter table Events auto_increment = 100000;

create table PowerPricing (
    postal varchar(10),
    time_record datetime,
    price_per_unit decimal(12, 4),
    primary key (postal, time_record)
);
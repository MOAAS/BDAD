PRAGMA foreign_keys = OFF;

-- Apagar tabelas --
drop table if exists Person;
drop table if exists Employee;
drop table if exists Passenger;
drop table if exists IsBoss;
drop table if exists Country;
drop table if exists City;
drop table if exists Airport;
drop table if exists Trip;
drop table if exists Ticket;
drop table if exists Luggage;
drop table if exists LuggageDropOff;
drop table if exists Airplane;
drop table if exists Airline;
drop table if exists AirplaneModel;
drop table if exists Class;
drop table if exists ClassRows;
drop table if exists Workplace;
drop table if exists Gate;
drop table if exists Strip;
drop table if exists Desk;
drop table if exists CheckInDesk;
drop table if exists HelpDesk;
drop table if exists HasDesk;
drop table if exists LuggageCounter;

PRAGMA foreign_keys = ON;

create table Person (
    SSN TEXT PRIMARY KEY,
    personName TEXT,
    BirthDate DATE,
    PhoneNumber TEXT UNIQUE,
    country INTEGER REFERENCES Country(CountryID)
);

create table Employee (
    PersonID TEXT PRIMARY KEY REFERENCES Person(SSN),
    Salary INTEGER,
    NIF TEXT UNIQUE,
    WorkplaceID INTEGER REFERENCES Workplace(WorkplaceID)
);

create table Passenger (
    PersonID TEXT PRIMARY KEY REFERENCES Person(SSN),
    IDnumber TEXT UNIQUE
);

create table IsBoss (
    BossID TEXT REFERENCES Employee(PersonID),
    BossedID TEXT REFERENCES Employee(PersonID),
    CHECK (BossID <> BossedID)
);

create table Country (
    CountryID INTEGER PRIMARY KEY,
    CountryName TEXT
);

create table City ( 
    CityID INTEGER PRIMARY KEY,
    CountryID INTEGER REFERENCES Country(CountryID),
    CityName TEXT
);

create table Airport (
    AirportID INTEGER PRIMARY KEY,
    CityID INTEGER REFERENCES City(CityID),
    AirportName TEXT,
    AirportCode TEXT
);

-- create table Trip
-- create table Ticket
-- create table Luggage
-- create table LuggageDropOff
-- create table Airplane
-- create table Airline
-- create table AirplaneModel
-- create table Class
-- create table ClassRows

create table Workplace (
    WorkplaceID INTEGER PRIMARY KEY,
    WorkplaceName TEXT
);

-- create table Gate
-- create table Strip
-- create table Desk
-- create table CheckInDesk
-- create table HelpDesk
-- create table HasDesk
-- create table LuggageCounter

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
    NIF TEXT PRIMARY KEY,
    personName TEXT,
    BirthDate TEXT,
    PhoneNumber TEXT,
    country INTEGER REFERENCES Country(CountryID)
);

create table Employee (
    PersonID TEXT REFERENCES Person(NIF),
    Salary INTEGER,
    Workplace REFERENCES Workplace(WorkplaceID),
    PRIMARY KEY (PersonID)
);

create table Passenger (
    PersonID TEXT REFERENCES Person(NIF),
    IDnumber TEXT,
    PRIMARY KEY (PersonID)
);

create table IsBoss (
    BossID INTEGER REFERENCES Employee(Person),
    BossedID INTEGER REFERENCES Employee(Person),
    CHECK (BossID <> BossedID)
);

create table Country (
    CountryID INTEGER PRIMARY KEY,
    CountryName TEXT
);

create table City ( 
    CityID INTEGER,
    CountryID INTEGER,
    CityName TEXT,
    PRIMARY KEY (CityID),
    FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);

create table Airport (
    AirportID INTEGER,
    CityID INTEGER,
    AirportName TEXT,
    AirportCode TEXT,
    PRIMARY KEY (AirportID),
    FOREIGN KEY (CityID) REFERENCES City(CityID)
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

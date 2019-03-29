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
    country INTEGER REFERENCES Country
);

create table Employee (
    PersonID TEXT PRIMARY KEY REFERENCES Person,
    Salary INTEGER,
    NIF TEXT UNIQUE,
    WorkplaceID INTEGER REFERENCES Workplace
);

create table Passenger (
    PersonID TEXT PRIMARY KEY REFERENCES Person,
    IDnumber TEXT UNIQUE
);

create table IsBoss (
    BossID TEXT REFERENCES Employee,
    BossedID TEXT REFERENCES Employee,
    CHECK (BossID <> BossedID)
);

create table Country (
    CountryID INTEGER PRIMARY KEY,
    CountryName TEXT
);

create table City ( 
    CityID INTEGER PRIMARY KEY,
    CountryID INTEGER REFERENCES Country,
    CityName TEXT
);

create table Airport (
    AirportID INTEGER PRIMARY KEY,
    CityID INTEGER REFERENCES City,
    AirportName TEXT,
    AirportCode TEXT
);

create table Trip (
    TripID INTEGER PRIMARY KEY,
    DepartureDate DATE,
    DepartureTime TIME,
    ArrivalDate DATE,
    ArrivalTime TIME,
    DurationHours INTEGER,
    DurationMinutes INTEGER,
    IsDeparture BOOLEAN NOT NULL CHECK (HasEmbarked IN(0,1)),
    GateID INTEGER REFERENCES Gate,
    StripID INTEGER REFERENCES Strip,
    AirplaneID INTEGER REFERENCES Airplane,
    AirportID INTEGER REFERENCES Airport
);


create table Ticket (
    PassengerID INTEGER PRIMARY KEY REFERENCES Passenger,
    TripID INTEGER PRIMARY KEY REFERENCES Trip,
    SeatNumber INTEGER,
    HasCheckedIn BOOLEAN NOT NULL CHECK (HasEmbarked IN(0,1)),
    HasEmbarked BOOLEAN NOT NULL CHECK (HasEmbarked IN(0,1)),
    HasEnteredEmbarkingZone BOOLEAN NOT NULL CHECK (HasEmbarked IN(0,1))
);

create table Luggage (
    LuggageID INTEGER PRIMARY KEY,
    Weight INTEGER
);

create table LuggageDropOff (
    TripID INTEGER PRIMARY KEY REFERENCES Trip,
    TerminalID INTEGER REFERENCES Terminal,
    Date TEXT,
    Time TEXT,
);

create table Airplane (
    AirplaneID INTEGER PRIMARY KEY,
    AirplaneName TEXT,
    AirlineID INTEGER REFERENCES Airline,
    ModelID INTEGER REFERENCES AirplaneModel
);

create table Airline (
    AirlineID INTEGER PRIMARY KEY,
    AirlineName TEXT,
    PhoneNumber TEXT
);

create table AirplaneModel (
    ModelID INTEGER PRIMARY KEY,
    ModelName TEXT,
    SeatsPerRow INTEGER,
    NumRows INTEGER,
    Capacity INTEGER
    CHECK (SeatsPerRow * NumRows = Capacity)
);

-- create table Class
-- create table ClassRows

create table Workplace (
    WorkplaceID INTEGER PRIMARY KEY,
    WorkplaceName TEXT UNIQUE
);

create table Gate (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace,
    GateName TEXT UNIQUE,
    IsBoardingGate BOOLEAN NOT NULL CHECK (HasEmbarked IN(0,1)),
);

create table Strip (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace,
    StripNum INTEGER UNIQUE
);

-- create table Desk
-- create table CheckInDesk
-- create table HelpDesk
-- create table HasDesk
-- create table LuggageCounter

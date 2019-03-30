-- Apagar tabelas --
drop table if exists Person;
drop table if exists Employee;
drop table if exists Passenger;
drop table if exists IsBoss;
drop table if exists Country;
drop table if exists City;
drop table if exists Airport;
drop table if exists Trip;
drop table if exists Class;
drop table if exists Ticket;
drop table if exists Luggage;
drop table if exists LuggageDropOff;
drop table if exists Airplane;
drop table if exists Airline;
drop table if exists AirplaneModel;
drop table if exists Workplace;
drop table if exists Gate;
drop table if exists Runway;
drop table if exists Desk;
drop table if exists CheckInDesk;
drop table if exists HelpDesk;
drop table if exists HasCheckInDesk;
drop table if exists LuggageBelt;

create table Person (
    PersonID INTEGER PRIMARY KEY,
    SSN TEXT UNIQUE,
    personName TEXT,
    BirthDate DATE,
    PhoneNumber TEXT UNIQUE,
    country INTEGER REFERENCES Country
);

create table Employee (
    PersonID INTEGER PRIMARY KEY REFERENCES Person,
    Salary REAL CHECK (Salary > 0),
    NIF TEXT UNIQUE,
    WorkplaceID INTEGER REFERENCES Workplace
);

create table Passenger (
    PersonID INTEGER PRIMARY KEY REFERENCES Person,
    IDnumber TEXT UNIQUE
);

create table IsBoss (
    BossID INTEGER REFERENCES Employee,
    BossedID INTEGER PRIMARY KEY REFERENCES Employee ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT DifferentBoss CHECK (BossID <> BossedID)
);

create table Country (
    CountryID INTEGER PRIMARY KEY,
    CountryName TEXT
);

create table City ( 
    CityID INTEGER PRIMARY KEY,
    CountryID INTEGER REFERENCES Country ON DELETE CASCADE ON UPDATE CASCADE,
    CityName TEXT
);

create table Airport (
    AirportCode TEXT PRIMARY KEY CHECK (LENGTH(AirportCode) = 3),
    CityID INTEGER REFERENCES City ON UPDATE CASCADE,
    AirportName TEXT
);

create table Trip (
    TripID INTEGER PRIMARY KEY,
    DepartureDate DATE NOT NULL,
    DepartureTime TIME NOT NULL,
    ArrivalDate DATE NOT NULL,
    ArrivalTime TIME NOT NULL,
    DurationHours REAL NOT NULL,
    IsDeparture BOOLEAN NOT NULL CHECK (IsDeparture IN(0,1)),
    GateID INTEGER NOT NULL REFERENCES Gate,
    RunwayID INTEGER NOT NULL REFERENCES Runway,
    AirplaneID INTEGER NOT NULL REFERENCES Airplane,
    AirportID INTEGER NOT NULL REFERENCES Airport,

    -- LuggageDropoff ? deixamos aqui ?
    BeltID INTEGER REFERENCES LuggageBelt,
    DropoffDate DATE,
    DropoffTime TIME,
    UNIQUE (DropoffDate, DropoffTime, BeltID),
    CONSTRAINT BeltConstraint CHECK (
        IsDeparture = 1 AND BeltID IS NULL AND DropoffDate IS NULL AND DropoffTime IS NULL
        OR
        IsDeparture = 0 AND BeltID NOT NULL AND DropoffDate NOT NULL AND DropoffTime = NULL
    )

);

create table Class (
    ClassID INTEGER PRIMARY KEY,
    ClassName TEXT UNIQUE
);

create table Ticket (
    PassengerID INTEGER REFERENCES Passenger,
    TripID INTEGER REFERENCES Trip,
    SeatRow INTEGER NOT NULL CHECK (SeatRow > 0),
    SeatLetter TEXT NOT NULL CHECK (LENGTH(SeatLetter) = 1),
    HasCheckedIn BOOLEAN CHECK (HasCheckedIn IN(0, 1, NULL)),
    HasEnteredBoardingZone BOOLEAN CHECK (HasEnteredBoardingZone IN(0, 1, NULL)),
    HasBoarded BOOLEAN CHECK (HasBoarded IN(0, 1, NULL)),
    ClassID INTEGER REFERENCES Class,
    PRIMARY KEY (PassengerID, TripID)
);

create table Luggage (
    LuggageID INTEGER PRIMARY KEY,
    Weight INTEGER CHECK (Weight > 0),
    TripID INTEGER REFERENCES Trip,
    PersonID INTEGER REFERENCES Passenger
);

/*
create table LuggageDropOff (
    TripID INTEGER PRIMARY KEY REFERENCES Trip,
    BeltID INTEGER REFERENCES LuggageBelt,
    DropoffDate DATE,
    DropoffTime TIME,
    UNIQUE (DropoffDate, DropoffTime, BeltID)
);
*/

create table Airplane (
    AirplaneID INTEGER PRIMARY KEY,
    AirlineID INTEGER REFERENCES Airline,
    ModelID INTEGER REFERENCES AirplaneModel,
    AirplaneName TEXT
);

create table Airline (
    AirlineID INTEGER PRIMARY KEY,
    AirlineName TEXT UNIQUE,
    PhoneNumber TEXT
);

create table AirplaneModel (
    ModelID INTEGER PRIMARY KEY,
    ModelName TEXT,
    SeatsPerRow INTEGER CHECK (SeatsPerRow > 0),
    NumRows INTEGER CHECK (NumRows > 0),
    Capacity INTEGER,
    CONSTRAINT CheckCapacity CHECK (SeatsPerRow * NumRows = Capacity)
);

create table Workplace (
    WorkplaceID INTEGER PRIMARY KEY,
    WorkplaceName TEXT UNIQUE
);

create table Gate (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace,
    GateName TEXT UNIQUE,
    IsBoardingGate BOOLEAN NOT NULL CHECK (IsBoardingGate IN(0,1))
);

create table Runway (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace,
    RunwayNum INTEGER UNIQUE
);

create table Desk (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace
);

create table CheckInDesk (
    DeskID INTEGER PRIMARY KEY REFERENCES Desk,
    CheckInName TEXT UNIQUE
);

create table HelpDesk (
    DeskID INTEGER PRIMARY KEY REFERENCES Desk,
    OpenTime TIME,
    CloseTime TIME,
    CONSTRAINT CloseTimeAfter CHECK (OpenTime < CloseTime)
);

create table HasCheckInDesk (
    AirlineID INTEGER REFERENCES Airline,
    DeskID INTEGER REFERENCES CheckInDesk,
    PRIMARY KEY (AirlineID, DeskID)
);

create table LuggageBelt (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace,
    BeltNum INTEGER UNIQUE
);

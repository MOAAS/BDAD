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
drop table if exists Arrival;
drop table if exists Departure;
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
    BirthDate DATE CHECK (LENGTH(BirthDate) = 10),
    PhoneNumber TEXT UNIQUE,
    country INTEGER REFERENCES Country(CountryID)
);

create table Employee (
    PersonID INTEGER PRIMARY KEY REFERENCES Person(PersonID),
    Salary REAL CHECK (Salary > 0),
    NIF TEXT UNIQUE,
    WorkplaceID INTEGER REFERENCES Workplace(WorkplaceID)
);

create table Passenger (
    PersonID INTEGER PRIMARY KEY REFERENCES Person(PersonID),
    IDnumber TEXT UNIQUE
);

create table IsBoss (
    BossID INTEGER REFERENCES Employee(PersonID),
    BossedID INTEGER PRIMARY KEY REFERENCES Employee(PersonID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT DifferentBoss CHECK (BossID <> BossedID)
);

create table Country (
    CountryID INTEGER PRIMARY KEY,
    CountryName TEXT
);

create table City ( 
    CityID INTEGER PRIMARY KEY,
    CountryID INTEGER REFERENCES Country(CountryID) ON DELETE CASCADE ON UPDATE CASCADE,
    CityName TEXT
);

create table Airport (
    AirportCode TEXT PRIMARY KEY CHECK (LENGTH(AirportCode) = 3),
    CityID INTEGER REFERENCES City(CityID) ON UPDATE CASCADE,
    AirportName TEXT
);

create table Trip (
    TripID INTEGER PRIMARY KEY
);

create table Departure (
    TripID INTEGER PRIMARY KEY REFERENCES Trip(TripID),
    DepartureDate DATE NOT NULL CHECK (LENGTH(DepartureDate) = 10),
    DepartureTime TIME NOT NULL CHECK (LENGTH(DepartureTime) = 5),
    ArrivalDate DATE NOT NULL CHECK (LENGTH(ArrivalDate) = 10),
    ArrivalTime TIME NOT NULL CHECK (LENGTH(ArrivalTime) = 5),
    DurationHours REAL NOT NULL,
    GateID INTEGER NOT NULL REFERENCES Gate(WorkplaceID),
    RunwayID INTEGER NOT NULL REFERENCES Runway(WorkplaceID),
    AirplaneID INTEGER NOT NULL REFERENCES Airplane(AirplaneID),
    AirportCode TEXT NOT NULL REFERENCES Airport(AirportCode),

    CONSTRAINT AvailableGate UNIQUE(DepartureDate, DepartureTime, GateID),
    CONSTRAINT AvailableRunway UNIQUE(DepartureDate, DepartureTime, RunwayID),
    CONSTRAINT AvailablePlane UNIQUE(DepartureDate, DepartureTime, AirplaneID)
);

create table Arrival (
    TripID INTEGER PRIMARY KEY REFERENCES Trip(TripID),
    DepartureDate DATE NOT NULL CHECK (LENGTH(DepartureDate) = 10),
    DepartureTime TIME NOT NULL CHECK (LENGTH(DepartureTime) = 5),
    ArrivalDate DATE NOT NULL CHECK (LENGTH(ArrivalDate) = 10),
    ArrivalTime TIME NOT NULL CHECK (LENGTH(ArrivalTime) = 5),
    DurationHours REAL NOT NULL,
    GateID INTEGER NOT NULL REFERENCES Gate(WorkplaceID),
    RunwayID INTEGER NOT NULL REFERENCES Runway(WorkplaceID),
    AirplaneID INTEGER NOT NULL REFERENCES Airplane(AirplaneID),
    AirportCode TEXT NOT NULL REFERENCES Airport(AirportCode),

    BeltID INTEGER NOT NULL REFERENCES LuggageBelt(WorkplaceID),
    DropoffDate DATE NOT NULL,
    DropoffTime TIME NOT NULL,

    CONSTRAINT AvailableLuggageBelt UNIQUE (DropoffDate, DropoffTime, BeltID),
    CONSTRAINT AvailableGate UNIQUE(ArrivalDate, ArrivalTime, GateID),
    CONSTRAINT AvailableRunway UNIQUE(ArrivalDate, ArrivalTime, RunwayID),
    CONSTRAINT AvailablePlane UNIQUE(DepartureDate, DepartureTime, AirplaneID)
);

create table Class (
    ClassID INTEGER PRIMARY KEY,
    ClassName TEXT UNIQUE
);

create table Ticket (
    TicketID INTEGER PRIMARY KEY,
    PassengerID INTEGER NOT NULL REFERENCES Passenger(PersonID),
    ArrivalID INTEGER REFERENCES Arrival(TripID),
    DepartureID INTEGER REFERENCES Departure(TripID),    
    SeatRow INTEGER NOT NULL CHECK (SeatRow > 0),
    SeatLetter TEXT NOT NULL CHECK (LENGTH(SeatLetter) = 1),
    HasCheckedIn BOOLEAN CHECK (HasCheckedIn IN(0, 1, NULL)),
    HasEnteredBoardingZone BOOLEAN CHECK (HasEnteredBoardingZone IN(0, 1, NULL)),
    HasBoarded BOOLEAN CHECK (HasBoarded IN(0, 1, NULL)),
    ClassID INTEGER REFERENCES Class(ClassID),

    -- Booleans only have value on Departures --
    CONSTRAINT DepartureNulls CHECK (DepartureID IS NULL = (HasBoarded IS NULL AND HasEnteredBoardingZone IS NULL AND HasBoarded IS NULL)),
    CONSTRAINT ArrivalXorDeparture CHECK (ArrivalID IS NULL <> DepartureID NOT NULL),
    UNIQUE (PassengerID, ArrivalID, DepartureID)
);

create table Luggage (
    LuggageID INTEGER PRIMARY KEY,
    Weight INTEGER CHECK (Weight > 0),
    TripID INTEGER REFERENCES Trip(TripID),
    PersonID INTEGER REFERENCES Passenger(PersonID)
);

create table Airplane (
    AirplaneID INTEGER PRIMARY KEY,
    AirlineID INTEGER REFERENCES Airline(AirlineID),
    ModelID INTEGER REFERENCES AirplaneModel(ModelID),
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
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    GateName TEXT UNIQUE,
    IsBoardingGate BOOLEAN NOT NULL CHECK (IsBoardingGate IN(0,1))
);

create table Runway (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    RunwayNum INTEGER UNIQUE
);

create table Desk (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID)
);

create table CheckInDesk (
    DeskID INTEGER PRIMARY KEY REFERENCES Desk(WorkplaceID),
    CheckInName TEXT UNIQUE
);

create table HelpDesk (
    DeskID INTEGER PRIMARY KEY REFERENCES Desk(WorkplaceID),
    OpenTime TIME,
    CloseTime TIME,
    CONSTRAINT CloseTimeAfter CHECK (OpenTime < CloseTime)
);

create table HasCheckInDesk (
    AirlineID INTEGER REFERENCES Airline(AirlineID),
    DeskID INTEGER REFERENCES CheckInDesk(DeskID),
    PRIMARY KEY (AirlineID, DeskID)
);

create table LuggageBelt (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    BeltNum INTEGER UNIQUE
);

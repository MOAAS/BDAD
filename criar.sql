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
drop table if exists CheckInDesk;
drop table if exists HelpDesk;
drop table if exists HasCheckInDesk;
drop table if exists LuggageBelt;

create table Person (
    PersonID INTEGER PRIMARY KEY,
    SSN TEXT UNIQUE,
    PersonName TEXT NOT NULL,
    BirthDate DATE CHECK (LENGTH(BirthDate) = 10),
    PhoneNumber TEXT UNIQUE,
    country INTEGER REFERENCES Country(CountryID)
);

create table Employee (
    PersonID INTEGER PRIMARY KEY REFERENCES Person(PersonID),
    Salary REAL CHECK (Salary >= 600),
    NIF TEXT NOT NULL UNIQUE,
    WorkplaceID INTEGER REFERENCES Workplace(WorkplaceID)
);

create table Passenger (
    PersonID INTEGER PRIMARY KEY REFERENCES Person(PersonID),
    IDnumber TEXT NOT NULL UNIQUE
);

create table IsBoss (
    BossID INTEGER NOT NULL REFERENCES Employee(PersonID),
    BossedID INTEGER PRIMARY KEY REFERENCES Employee(PersonID),
    CONSTRAINT DifferentBoss CHECK (BossID <> BossedID)
);

create table Country (
    CountryID INTEGER PRIMARY KEY,
    CountryName TEXT NOT NULL UNIQUE
);

create table City ( 
    CityID INTEGER PRIMARY KEY,
    CountryID INTEGER REFERENCES Country(CountryID) ON DELETE CASCADE ON UPDATE CASCADE,
    CityName TEXT NOT NULL,

    UNIQUE(CityName, CountryID)
);

create table Airport (
    AirportCode TEXT PRIMARY KEY CHECK (LENGTH(AirportCode) = 3),
    CityID INTEGER REFERENCES City(CityID) ON UPDATE CASCADE,
    AirportName TEXT,

    UNIQUE(AirportName, CityID)
);

create table Trip (
    TripID INTEGER PRIMARY KEY,
    AirportCode TEXT NOT NULL REFERENCES Airport(AirportCode),
    DepartureDate DATE NOT NULL CHECK (LENGTH(DepartureDate) = 10),
    DepartureTime TIME NOT NULL CHECK (LENGTH(DepartureTime) = 5),
    ArrivalDate DATE NOT NULL CHECK (LENGTH(ArrivalDate) = 10),
    ArrivalTime TIME NOT NULL CHECK (LENGTH(ArrivalTime) = 5),
    DurationHours INTEGER NOT NULL CHECK (DurationHours >= 0),
    DurationMinutes INTEGER NOT NULL CHECK (DurationMinutes >= 0 AND DurationMinutes < 60),
    GateID INTEGER NOT NULL REFERENCES Gate(WorkplaceID),
    RunwayID INTEGER NOT NULL REFERENCES Runway(WorkplaceID),
    AirplaneID INTEGER NOT NULL REFERENCES Airplane(AirplaneID),

    CONSTRAINT FlightDuration CHECK (DurationHours > 0 OR DurationMinutes > 0)
);

create table Departure (
    TripID INTEGER PRIMARY KEY REFERENCES Trip(TripID)
);

create table Arrival (
    TripID INTEGER PRIMARY KEY REFERENCES Trip(TripID),
    BeltID INTEGER NOT NULL REFERENCES LuggageBelt(WorkplaceID),
    DropoffDate DATE NOT NULL,
    DropoffTime TIME NOT NULL,

    CONSTRAINT AvailableLuggageBelt UNIQUE (DropoffDate, DropoffTime, BeltID)
);

create table Class (
    ClassID INTEGER PRIMARY KEY,
    ClassName TEXT UNIQUE
);

create table Ticket (
    PassengerID INTEGER NOT NULL REFERENCES Passenger(PersonID),
    TripID INTEGER REFERENCES Trip(TripID),
    SeatRow INTEGER CHECK (SeatRow > 0),
    SeatLetter TEXT CHECK (LENGTH(SeatLetter) = 1),
    HasCheckedIn BOOLEAN CHECK (HasCheckedIn IN(0, 1, NULL)),
    HasEnteredBoardingZone BOOLEAN CHECK (HasEnteredBoardingZone IN(0, 1, NULL)),
    HasBoarded BOOLEAN CHECK (HasBoarded IN(0, 1, NULL)),
    ClassID INTEGER NOT NULL REFERENCES Class(ClassID),

    PRIMARY KEY (SeatRow, SeatLetter, TripID)

    /*-- Booleans only have value on Departures --
    
    ******** Eu pus "ArrivalID" e "DepartureID" tudo em "TripID", se houver razao para diferenciar apita ******

    CONSTRAINT DepartureNulls CHECK (DepartureID IS NULL = (HasBoarded IS NULL AND HasEnteredBoardingZone IS NULL AND HasBoarded IS NULL)),
    CONSTRAINT ArrivalXorDeparture CHECK ((ArrivalID IS NULL) <> (DepartureID IS NULL)),*/

    -- PRIMARY KEY (PassengerID, TripID)
);

create table Luggage (
    LuggageID INTEGER PRIMARY KEY,
    Weight INTEGER NOT NULL CHECK (Weight > 0),
    TripID INTEGER NOT NULL REFERENCES Trip(TripID),
    PersonID INTEGER NOT NULL REFERENCES Passenger(PersonID)
);

create table Airplane (
    AirplaneID INTEGER PRIMARY KEY,
    AirlineID INTEGER NOT NULL REFERENCES Airline(AirlineID),
    ModelID INTEGER NOT NULL REFERENCES AirplaneModel(ModelID),
    AirplaneName TEXT NOT NULL
);

create table Airline (
    AirlineID INTEGER PRIMARY KEY,
    AirlineName TEXT NOT NULL UNIQUE,
    PhoneNumber TEXT NOT NULL UNIQUE
);

create table AirplaneModel (
    ModelID INTEGER PRIMARY KEY,
    ModelName TEXT NOT NULL,
    SeatsPerRow INTEGER NOT NULL CHECK (SeatsPerRow > 0),
    NumRows INTEGER NOT NULL CHECK (NumRows > 0)
);

create table Workplace (
    WorkplaceID INTEGER PRIMARY KEY,
    WorkplaceName TEXT UNIQUE
);

create table Gate (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    GateName TEXT NOT NULL UNIQUE,
    IsBoardingGate BOOLEAN NOT NULL CHECK (IsBoardingGate IN(0,1))
);

create table Runway (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    RunwayNum INTEGER NOT NULL UNIQUE
);

create table LuggageBelt (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    BeltNum INTEGER NOT NULL UNIQUE
);

create table CheckInDesk (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    CheckInName TEXT NOT NULL UNIQUE
);

create table HelpDesk (
    WorkplaceID INTEGER PRIMARY KEY REFERENCES Workplace(WorkplaceID),
    OpenTime TIME NOT NULL CHECK (LENGTH(OpenTime) = 5),
    CloseTime TIME NOT NULL CHECK (LENGTH(CloseTime) = 5),
    CONSTRAINT CloseTimeAfter CHECK (OpenTime < CloseTime)
);

create table HasCheckInDesk (
    AirlineID INTEGER REFERENCES Airline(AirlineID),
    DeskID INTEGER REFERENCES CheckInDesk(WorkplaceID),
    PRIMARY KEY (AirlineID, DeskID)
);

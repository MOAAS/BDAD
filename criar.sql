PRAGMA foreign_keys = OFF;

-- Apagar tabelas --
drop table if exists Person;
drop table if exists Employee;
drop table if exists Passenger;
drop table if exists Boss;
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
    name TEXT PRIMARY KEY, 
    country TEXT
);

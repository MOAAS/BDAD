PRAGMA foreign_keys = ON;

--- Country, Name ---
insert into Country values(0, "Portugal");
insert into Country values(1, "Spain");
insert into Country values(2, "France");
insert into Country values(3, "Germany");
insert into Country values(4, "Netherlands");
insert into Country values(5, "Belgium");
insert into Country values(6, "United Kingdom");
insert into Country values(7, "Italy");
insert into Country values(8, "Austria");
insert into Country values(9, "Denmark");
insert into Country values(10, "Norway");
insert into Country values(11, "Sweden");
insert into Country values(12, "Finland");
insert into Country values(13, "Switzerland");
insert into Country values(14, "Greece");
insert into Country values(15, "United States of America");
insert into Country values(16, "Canada");
insert into Country values(17, "Brazil");
insert into Country values(18, "Morocco");
insert into Country values(19, "India");
insert into Country values(20, "China");
insert into Country values(21, "Japan");
insert into Country values(22, "Russia");
insert into Country values(23, "United Arab Emirates");

--- City, Country, Name ---
insert into City values(00, 00, "Lisbon");
insert into City values(01, 01, "Madrid");
insert into City values(02, 02, "Paris");
insert into City values(03, 03, "Berlin");
insert into City values(04, 04, "Amsterdam");
insert into City values(05, 05, "Brussels");
insert into City values(06, 06, "London");
insert into City values(07, 07, "Rome");
insert into City values(08, 08, "Prague");
insert into City values(09, 09, "Copenhagen");
insert into City values(10, 10, "Oslo");
insert into City values(11, 11, "Stockholm");
insert into City values(12, 12, "Helsinki");
insert into City values(13, 13, "Bern");
insert into City values(14, 14, "Athens");
insert into City values(15, 15, "New York");
insert into City values(16, 16, "Toronto");
insert into City values(17, 17, "Brasilia");
insert into City values(18, 18, "Casablanca");
insert into City values(19, 19, "New Delhi");
insert into City values(20, 20, "Beijing");
insert into City values(21, 21, "Tokyo");
insert into City values(22, 22, "Moscow");
insert into City values(23, 23, "Dubai");
insert into City values(24, 00, "Oporto");
insert into City values(25, 03, "Frankfurt");
insert into City values(26, 13, "Geneva");
insert into City values(27, 02, "Barcelona");

--- Code, City, Name ---
insert into Airport values("LIS", 00, "Lisbon Portela Airport");
insert into Airport values("MAD", 01, "Madrid-Barajas Adolfo Suarez");
insert into Airport values("CDG", 02, "Charles de Gaulle");
insert into Airport values("BER", 03, "Berlin Brandenburg");
insert into Airport values("AMS", 04, "Amsterdam Airport Schiphol");
insert into Airport values("BRU", 05, "Brussels Airport");
insert into Airport values("LCY", 06, "London City Airport");
insert into Airport values("FCO", 07, "Leonardo da Vinci International");
insert into Airport values("PRG", 08, "Václav Havel");
insert into Airport values("CPH", 09, "Copenhagen Airport");
insert into Airport values("OSL", 10, "Oslo Airport");
insert into Airport values("ARN", 11, "Stockholm Arlanda");
insert into Airport values("HEL", 12, "Helsinki Airport");
insert into Airport values("BRN", 13, "Bern Airport");
insert into Airport values("ATH", 14, "Athens International");
insert into Airport values("JFK", 15, "John F. Kennedy");
insert into Airport values("YYZ", 16, "Toronto Pearson");
insert into Airport values("BSB", 17, "International Airport of Brasilia");
insert into Airport values("CMN", 18, "Mohammed V");
insert into Airport values("DEL", 19, "Indira Gandhi");
insert into Airport values("PEK", 20, "Beijing Capital");
insert into Airport values("HND", 21, "Haneda");
insert into Airport values("VKO", 22, "Vnukovo");
insert into Airport values("DXB", 23, "Dubai International Airport");
insert into Airport values("OPO", 24, "Francisco Sa Carneiro");
insert into Airport values("FRA", 25, "Frankfurt Airport");
insert into Airport values("GVA", 26, "Geneve Airport");
insert into Airport values("BCN", 27, "Barcelona–El Prat");
insert into Airport values("QQS", 06, "St Pancras International");
insert into Airport values("LGA", 15, "LaGuardia");
insert into Airport values("EWR", 15, "Newark Liberty");

-- ID, name --

insert into Workplace values(00, "HelpDesk 1");
insert into Workplace values(01, "HelpDesk 2");
insert into Workplace values(02, "HelpDesk 3");
insert into Workplace values(03, "HelpDesk 4");
insert into Workplace values(04, "CheckInDesk 1");
insert into Workplace values(05, "CheckInDesk 2");
insert into Workplace values(06, "CheckInDesk 3");
insert into Workplace values(07, "CheckInDesk 4");
insert into Workplace values(08, "CheckInDesk 5");
insert into Workplace values(09, "CheckInDesk 6");
insert into Workplace values(10, "CheckInDesk 7");
insert into Workplace values(11, "CheckInDesk 8");
insert into Workplace values(12, "CheckInDesk 9");
insert into Workplace values(13, "CheckInDesk 10");
insert into Workplace values(14, "CheckInDesk 11");
insert into Workplace values(15, "CheckInDesk 12");
insert into Workplace values(16, "CheckInDesk 13");
insert into Workplace values(17, "CheckInDesk 14");
insert into Workplace values(18, "CheckInDesk 15");
insert into Workplace values(19, "CheckInDesk 16");
insert into Workplace values(20, "CheckInDesk 17");
insert into Workplace values(21, "CheckInDesk 18");
insert into Workplace values(22, "CheckInDesk 19");
insert into Workplace values(23, "CheckInDesk 20");
insert into Workplace values(24, "Runway 1");
insert into Workplace values(25, "Runway 2");
insert into Workplace values(26, "Runway 3");
insert into Workplace values(27, "Runway 4");
insert into Workplace values(28, "Runway 5");
insert into Workplace values(29, "Luggage Counter 1");
insert into Workplace values(30, "Luggage Counter 2");
insert into Workplace values(31, "Luggage Counter 3");
insert into Workplace values(32, "Luggage Counter 4");
insert into Workplace values(33, "Luggage Counter 5");
insert into Workplace values(34, "Gate 1");
insert into Workplace values(35, "Gate 2");
insert into Workplace values(36, "Gate 3");
insert into Workplace values(37, "Gate 4");
insert into Workplace values(38, "Gate 5");
insert into Workplace values(39, "Gate 6");
insert into Workplace values(40, "Gate 7");
insert into Workplace values(41, "Gate 8");
insert into Workplace values(42, "Gate 9");
insert into Workplace values(43, "Gate 10");
insert into Workplace values(44, "Gate 11");
insert into Workplace values(45, "Gate 12");
insert into Workplace values(46, "Gate 13");
insert into Workplace values(47, "Gate 14");
insert into Workplace values(48, "Gate 15");
insert into Workplace values(49, "Gate 16");
insert into Workplace values(50, "Gate 17");
insert into Workplace values(51, "Gate 18");
insert into Workplace values(52, "Gate 19");
insert into Workplace values(53, "Gate 20");

-- WorkplaceID --

insert into Desk values(00);
insert into Desk values(01);
insert into Desk values(02);
insert into Desk values(03);
insert into Desk values(04);
insert into Desk values(05);
insert into Desk values(06);
insert into Desk values(07);
insert into Desk values(08);
insert into Desk values(09);
insert into Desk values(10);
insert into Desk values(11);
insert into Desk values(12);
insert into Desk values(13);
insert into Desk values(14);
insert into Desk values(15);
insert into Desk values(16);
insert into Desk values(17);
insert into Desk values(18);
insert into Desk values(19);
insert into Desk values(20);
insert into Desk values(21);
insert into Desk values(22);
insert into Desk values(23);

-- DeskID, OpenTime, CloseTime --

insert into HelpDesk values(0, "10:00", "19:00");
insert into HelpDesk values(1, "09:00", "12:00");
insert into HelpDesk values(2, "15:00", "22:00");
insert into HelpDesk values(3, "00:00", "11:00");

-- DeskID, CheckInNum --

insert into CheckInDesk values(04, "A1");
insert into CheckInDesk values(05, "A2");
insert into CheckInDesk values(06, "A3");
insert into CheckInDesk values(07, "A4");
insert into CheckInDesk values(08, "A5");
insert into CheckInDesk values(09, "A6");
insert into CheckInDesk values(10, "A7");
insert into CheckInDesk values(11, "A8");
insert into CheckInDesk values(12, "B1");
insert into CheckInDesk values(13, "B2");
insert into CheckInDesk values(14, "B3");
insert into CheckInDesk values(15, "B4");
insert into CheckInDesk values(16, "B5");
insert into CheckInDesk values(17, "B6");
insert into CheckInDesk values(18, "C1");
insert into CheckInDesk values(19, "C2");
insert into CheckInDesk values(20, "C3");
insert into CheckInDesk values(21, "C4");
insert into CheckInDesk values(22, "C5");
insert into CheckInDesk values(23, "C6");

-- Workplace, RunwayNum --

insert into Runway values(24, 1);
insert into Runway values(25, 2);
insert into Runway values(26, 3);
insert into Runway values(27, 4);
insert into Runway values(28, 5);

-- Workplace, BeltNum --

insert into LuggageBelt values(29, 1);
insert into LuggageBelt values(30, 2);
insert into LuggageBelt values(31, 3);
insert into LuggageBelt values(32, 4);
insert into LuggageBelt values(33, 5);

-- Workplace, GateName, IsBoardingGate --

insert into Gate values(34, "B1", 1);
insert into Gate values(35, "B2", 1);
insert into Gate values(36, "B3", 1);
insert into Gate values(37, "B4", 1);
insert into Gate values(38, "B5", 1);
insert into Gate values(39, "B6", 1);
insert into Gate values(40, "B7", 1);
insert into Gate values(41, "B8", 1);
insert into Gate values(42, "B9", 1);
insert into Gate values(43, "B10", 1);
insert into Gate values(44, "B11", 1);
insert into Gate values(45, "B12", 1);
insert into Gate values(46, "B13", 1);
insert into Gate values(47, "B14", 1);
insert into Gate values(48, "B15", 1);

insert into Gate values(49, "D1", 0);
insert into Gate values(50, "D2", 0);
insert into Gate values(51, "D3", 0);
insert into Gate values(52, "D4", 0);
insert into Gate values(53, "D5", 0);

-- ID, SSN, Name, BirthDate, PhoneNum, Country --

insert into Person values(00, "448-17-7560", "Pedro Moas",                  "2000-06-29", "535810867", 0);
insert into Person values(01, "268-60-4192", "Daniel Brandao",              "2000-06-29", "723877122", 0);
insert into Person values(02, "488-10-3030", "Henrique Santos",             "2000-06-29", "105142167", 0);
insert into Person values(03, "811-60-0024", "António Manuel Ferrao",       "2000-06-29", "805173159", 0);
insert into Person values(04, "846-02-3946", "Joan Miro",                   "2000-06-29", "259874184", 1);
insert into Person values(05, "664-01-6801", "Pablo Picasso",               "2000-06-29", "910649292", 1);
insert into Person values(06, "559-51-8358", "Helen of Troy",               "2000-06-29", "483742214", 2);
insert into Person values(07, "104-96-4339", "Gustave Eiffel",              "2000-06-29", "569954106", 2); --
insert into Person values(08, "596-67-8963", "Robert de Niro",              "2000-06-29", "281466649", 3);
insert into Person values(09, "755-28-0421", "Pope Benedict XVI",           "2000-06-29", "355905525", 3);
insert into Person values(10, "421-17-7728", "Edsger Dijkstra",             "2000-06-29", "402440002", 4);
insert into Person values(11, "915-95-0390", "John Oliver",                 "2000-06-29", "203583521", 6);
insert into Person values(12, "867-91-5038", "Sir Patrick Stewart",         "2000-06-29", "248813141", 6); 
insert into Person values(13, "157-85-9541", "Leonardo da Vinci",           "2000-06-29", "693149463", 7);
insert into Person values(14, "522-33-8445", "Christopher Columbus",        "2000-06-29", "488004957", 7);
insert into Person values(15, "636-97-4046", "Arnold Schwarzenegger",       "2000-06-29", "944968861", 8);
insert into Person values(16, "188-55-2332", "Ingvar Kamprad",              "2000-06-29", "349314027", 11);
insert into Person values(17, "117-47-0238", "Albert Einstein",             "2000-06-29", "257577076", 13);
insert into Person values(18, "156-25-0110", "Plato",                       "2008-03-21", "171996380", 14);
insert into Person values(19, "810-88-3403", "Aristotle",                   "2006-08-28", "708121533", 14);
insert into Person values(20, "118-78-6068", "Bob Ross",                    "2000-06-29", "448849408", 15);
insert into Person values(21, "534-94-1513", "Walt Disney",                 "2000-06-29", "409288029", 15);
insert into Person values(22, "378-69-2529", "Wilbur Wright ",              "2000-06-29", "215093612", 15);
insert into Person values(23, "509-07-3067", "Orville Wright ",             "2000-06-29", "291048841", 15);
insert into Person values(24, "269-22-8437", "Joer Bolsanero",              "2000-06-29", "362733425", 17);
insert into Person values(25, "783-23-3880", "Mohandas Karamchand Gandhi",  "2000-06-29", "662503275", 19);
insert into Person values(26, "151-18-8196", "Sun Tzu",                     "2000-06-29", "816443907", 20);
insert into Person values(27, "523-49-3356", "Yoko Ono",                    "2000-06-29", "509182591", 21);
insert into Person values(28, "810-71-8816", "Vladimir Putin",              "2000-06-29", "310645601", 22);
insert into Person values(29, "210-91-5976", "Mohammed Rashid Al Maktoum",  "2000-06-29", "786043209", 23);

-- ID, Salary, NIF, WorkplaceID --

insert into Employee values(0, 5530, "302739485", 0);
insert into Employee values(1, 3957, "651994470", 0);
insert into Employee values(2, 5392, "560056987", 0);
insert into Employee values(3, 8320, "260807591", 0);
insert into Employee values(4, 6358, "890419768", 1);
insert into Employee values(5, 4557, "856261184", 1);
insert into Employee values(6, 6768, "390999080", 2);
insert into Employee values(7, 4149, "290615058", 2);

-- ID, IDnum -- 

insert into Passenger values(08, "6840709ZDS");
insert into Passenger values(09, "1510776TBC");
insert into Passenger values(10, "78984433YE");
insert into Passenger values(11, "6028411ECC");
insert into Passenger values(12, "2130083155");
insert into Passenger values(13, "7062273U8M");
insert into Passenger values(14, "6710988JRX");
insert into Passenger values(15, "3757976ZPO");
insert into Passenger values(16, "1910378C95");
insert into Passenger values(17, "9491547JFP");
insert into Passenger values(18, "81363070FP");
insert into Passenger values(19, "6699436QCN");
insert into Passenger values(20, "7182280DTJ");
insert into Passenger values(21, "0137130WSY");
insert into Passenger values(22, "0175048UUP");
insert into Passenger values(23, "0547115FWG");
insert into Passenger values(24, "3114525W1B");
insert into Passenger values(25, "7489688SL9");
insert into Passenger values(26, "6052663QTH");
insert into Passenger values(27, "1113266GOQ");
insert into Passenger values(28, "4627716EVL");
insert into Passenger values(29, "2793427Z8I");

-- BossID, BossedID --

insert into IsBoss values(3, 0);
insert into IsBoss values(3, 1);
insert into IsBoss values(3, 2);
insert into IsBoss values(3, 4);
insert into IsBoss values(3, 5);
insert into IsBoss values(3, 6);
insert into IsBoss values(3, 7);

-- ClassID, ClassName --

insert into Class values(0, "Economy");
insert into Class values(1, "Premium Economy");
insert into Class values(2, "First Class");
insert into Class values(3, "Business");

-- ModelID, ModelName, SeatsPerRow, NumRows, Capacity --

insert into AirplaneModel values(0, "Airbus A333-300", 7, 40, 280);
insert into AirplaneModel values(1, "Airbus A340-300", 7, 45, 315);
insert into AirplaneModel values(2, "Airbus A340-500", 7, 50, 350);
insert into AirplaneModel values(3, "Airbus A350-900", 9, 50, 450);
insert into AirplaneModel values(4, "Boeing 777-200", 9, 50, 450);
insert into AirplaneModel values(5, "Airbus A340-600", 10, 50, 500);
insert into AirplaneModel values(6, "Boeing 777-300", 10, 55, 550);
insert into AirplaneModel values(7, "Boeing 747-400", 10, 60, 600);
insert into AirplaneModel values(8, "Boeing 747-8", 10, 70, 700);
insert into AirplaneModel values(9, "Airbus A380-800", 10, 80, 800);

-- AirlineID, Name, PhoneNumber --

insert into Airline values(00, "TAP Air Portugal",  "218431100");
insert into Airline values(01, "Ryanair",           "218431100");
insert into Airline values(02, "Easy Jet",          "218431100");
insert into Airline values(03, "Lufthansa",         "218431100");
insert into Airline values(04, "Air France",        "218431100");
insert into Airline values(05, "Aeroflot",          "218431100");
insert into Airline values(06, "Turkish Airlines",  "218431100");
insert into Airline values(07, "Alitalia",          "218431100");
insert into Airline values(08, "Emirates",          "218431100");
insert into Airline values(09, "Air Europa",        "218431100");
insert into Airline values(10, "Iberia",            "218431100");
insert into Airline values(11, "Qantas",            "218431100");
insert into Airline values(12, "Japan Airlines",    "218431100");
insert into Airline values(13, "Qatar Airways",     "218431100");
insert into Airline values(14, "Finnair",           "218431100");
insert into Airline values(15, "British Airways",   "218431100");
insert into Airline values(16, "Swiss Air",         "218431100");
insert into Airline values(17, "Air Canada",        "218431100");
insert into Airline values(18, "jetBlue",           "218431100");
insert into Airline values(19, "Bulgaria Air",      "218431100");

-- AirplaneID, AirlineID, ModelID, Name --

insert into Airplane values(00, 00, 3, "Antonio Ferreira");
insert into Airplane values(01, 00, 1, "Joao Canas Ferreira");
insert into Airplane values(02, 01, 8, "Antonio Coelho");
insert into Airplane values(03, 01, 4, "Gabriel David");
insert into Airplane values(04, 02, 5, "Antonio Araujo");
insert into Airplane values(05, 02, 5, "Manuel Firmino Torres");
insert into Airplane values(06, 03, 9, "Joao Pascoal Faria");
insert into Airplane values(07, 03, 4, "Antonio Miguel Gomes");
insert into Airplane values(08, 04, 7, "Jaime Villate");
insert into Airplane values(09, 04, 1, "Alexandre Afonso");
insert into Airplane values(10, 05, 0, "Jose Trigo Barbosa");
insert into Airplane values(11, 05, 4, "Joao Manuel Cardoso");
insert into Airplane values(12, 06, 3, "Luis Teofilo");
insert into Airplane values(13, 06, 5, "Jose Soeiro");
insert into Airplane values(14, 07, 7, "Rui Coelho de Sousa");
insert into Airplane values(15, 07, 1, "Pedro Ferreira Souto");
insert into Airplane values(16, 08, 8, "Nuno Paulino");
insert into Airplane values(17, 08, 6, "Jorge Alves da Silva");
insert into Airplane values(18, 09, 3, "Pedro Miguel Silva");
insert into Airplane values(19, 09, 4, "Ana Paula Rocha");
insert into Airplane values(20, 10, 8, "Luis Paulo Reis");
insert into Airplane values(21, 10, 8, "Carla Teixeira Lopes");
insert into Airplane values(22, 11, 4, "Rosaldo Rosetti");
insert into Airplane values(23, 11, 7, "Antonio Augusto Sousa");
insert into Airplane values(24, 12, 8, "Jose Manuel Cruz");
insert into Airplane values(25, 12, 8, "Andre Restivo");
insert into Airplane values(26, 13, 8, "Nuno Flores");
insert into Airplane values(27, 13, 4, "Manuel Ricardo");
insert into Airplane values(28, 14, 3, "Joao Antonio Lopes");
insert into Airplane values(29, 14, 2, "Sergio Nunes");
insert into Airplane values(30, 15, 8, "Joao Jose Ferreira");
insert into Airplane values(31, 15, 0, "Hugo Ferreira");
insert into Airplane values(32, 16, 6, "Lia Raquel Patricio");
insert into Airplane values(33, 16, 6, "Carlos Manuel Soares");
insert into Airplane values(34, 17, 0, "Ana Cristina Paiva");
insert into Airplane values(35, 17, 7, "Maria Galvao Dias");
insert into Airplane values(36, 18, 1, "Gil Manuel Goncalves");
insert into Airplane values(37, 18, 2, "Ana Maria Neves");
insert into Airplane values(38, 19, 2, "Catarina Rosa Castro");
insert into Airplane values(39, 19, 4, "Tiago Boldt Sousa");

-- AirlineID, DeskID (4 - 23) --

-- Desks 4 to 11 (A) --
insert into HasCheckInDesk values(0, 4);
insert into HasCheckInDesk values(1, 4);
insert into HasCheckInDesk values(2, 4);
insert into HasCheckInDesk values(3, 4);
insert into HasCheckInDesk values(4, 4);

insert into HasCheckInDesk values(0, 5);
insert into HasCheckInDesk values(1, 5);
insert into HasCheckInDesk values(2, 5);
insert into HasCheckInDesk values(3, 5);
insert into HasCheckInDesk values(4, 5);

insert into HasCheckInDesk values(0, 6);
insert into HasCheckInDesk values(1, 6);
insert into HasCheckInDesk values(2, 6);
insert into HasCheckInDesk values(3, 6);
insert into HasCheckInDesk values(4, 6);

insert into HasCheckInDesk values(0, 7);
insert into HasCheckInDesk values(1, 7);
insert into HasCheckInDesk values(2, 7);
insert into HasCheckInDesk values(3, 7);
insert into HasCheckInDesk values(4, 7);

insert into HasCheckInDesk values(0, 8);
insert into HasCheckInDesk values(1, 8);
insert into HasCheckInDesk values(2, 8);
insert into HasCheckInDesk values(3, 8);
insert into HasCheckInDesk values(4, 8);

insert into HasCheckInDesk values(0, 9);
insert into HasCheckInDesk values(1, 9);
insert into HasCheckInDesk values(2, 9);
insert into HasCheckInDesk values(3, 9);
insert into HasCheckInDesk values(4, 9);

insert into HasCheckInDesk values(0, 10);
insert into HasCheckInDesk values(1, 10);
insert into HasCheckInDesk values(2, 10);
insert into HasCheckInDesk values(3, 10);
insert into HasCheckInDesk values(4, 10);

insert into HasCheckInDesk values(0, 11);
insert into HasCheckInDesk values(1, 11);
insert into HasCheckInDesk values(2, 11);
insert into HasCheckInDesk values(3, 11);
insert into HasCheckInDesk values(4, 11);

-- Desks 12 to 17 (B) --

insert into HasCheckInDesk values(5, 12);
insert into HasCheckInDesk values(6, 12);
insert into HasCheckInDesk values(7, 12);
insert into HasCheckInDesk values(8, 12);
insert into HasCheckInDesk values(9, 12);
insert into HasCheckInDesk values(10, 12);

insert into HasCheckInDesk values(5, 13);
insert into HasCheckInDesk values(6, 13);
insert into HasCheckInDesk values(7, 13);
insert into HasCheckInDesk values(8, 13);
insert into HasCheckInDesk values(9, 13);
insert into HasCheckInDesk values(10, 13);

insert into HasCheckInDesk values(5, 14);
insert into HasCheckInDesk values(6, 14);
insert into HasCheckInDesk values(7, 14);
insert into HasCheckInDesk values(8, 14);
insert into HasCheckInDesk values(9, 14);
insert into HasCheckInDesk values(10, 14);

insert into HasCheckInDesk values(5, 15);
insert into HasCheckInDesk values(6, 15);
insert into HasCheckInDesk values(7, 15);
insert into HasCheckInDesk values(8, 15);
insert into HasCheckInDesk values(9, 15);
insert into HasCheckInDesk values(10, 15);

insert into HasCheckInDesk values(5, 16);
insert into HasCheckInDesk values(6, 16);
insert into HasCheckInDesk values(7, 16);
insert into HasCheckInDesk values(8, 16);
insert into HasCheckInDesk values(9, 16);
insert into HasCheckInDesk values(10, 16);

insert into HasCheckInDesk values(5, 17);
insert into HasCheckInDesk values(6, 17);
insert into HasCheckInDesk values(7, 17);
insert into HasCheckInDesk values(8, 17);
insert into HasCheckInDesk values(9, 17);
insert into HasCheckInDesk values(10, 17);

-- Desks 18 to 23 (C) --

insert into HasCheckInDesk values(11, 18);
insert into HasCheckInDesk values(11, 19);

insert into HasCheckInDesk values(12, 20);
insert into HasCheckInDesk values(13, 20);

insert into HasCheckInDesk values(14, 21);
insert into HasCheckInDesk values(15, 21);

insert into HasCheckInDesk values(16, 22);
insert into HasCheckInDesk values(17, 22);

insert into HasCheckInDesk values(18, 23);
insert into HasCheckInDesk values(19, 23);


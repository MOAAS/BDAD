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

--- Airport, City, Name, Code ---
insert into Airport values(00, 00, "Lisbon Portela Airport", "LIS");
insert into Airport values(01, 01, "Madrid-Barajas Adolfo Suarez", "MAD");
insert into Airport values(02, 02, "Charles de Gaulle", "CDG");
insert into Airport values(03, 03, "Berlin Brandenburg", "BER");
insert into Airport values(04, 04, "Amsterdam Airport Schiphol", "AMS");
insert into Airport values(05, 05, "Brussels Airport", "BRU");
insert into Airport values(06, 06, "London City Airport", "LCY");
insert into Airport values(07, 07, "Leonardo da Vinci International", "FCO");
insert into Airport values(08, 08, "Václav Havel", "PRG");
insert into Airport values(09, 09, "Copenhagen Airport", "CPH");
insert into Airport values(10, 10, "Oslo Airport", "OSL");
insert into Airport values(11, 11, "Stockholm Arlanda", "ARN");
insert into Airport values(12, 12, "Helsinki Airport", "HEL");
insert into Airport values(13, 13, "Bern Airport", "BRN");
insert into Airport values(14, 14, "Athens International", "ATH");
insert into Airport values(15, 15, "John F. Kennedy", "JFK");
insert into Airport values(16, 16, "Toronto Pearson", "YYZ");
insert into Airport values(17, 17, "International Airport of Brasilia", "BSB");
insert into Airport values(18, 18, "Mohammed V", "CMN");
insert into Airport values(19, 19, "Indira Gandhi", "DEL");
insert into Airport values(20, 20, "Beijing Capital", "PEK");
insert into Airport values(21, 21, "Haneda", "HND");
insert into Airport values(22, 22, "Vnukovo", "VKO");
insert into Airport values(23, 23, "Dubai International Airport", "DXB");
insert into Airport values(24, 24, "Francisco Sa Carneiro", "OPO");
insert into Airport values(25, 25, "Frankfurt Airport", "FRA");
insert into Airport values(26, 26, "Geneve Airport", "GVA");
insert into Airport values(27, 27, "Barcelona–El Prat", "BCN");
insert into Airport values(28, 06, "St Pancras International", "QQS");
insert into Airport values(29, 15, "LaGuardia", "LGA");
insert into Airport values(30, 15, "Newark Liberty", "EWR");

-- ID, name --

insert into Workplace values(00, "HelpDesk 1");
insert into Workplace values(01, "HelpDesk 2");
insert into Workplace values(02, "CheckInDesk 1");
insert into Workplace values(03, "CheckInDesk 2");
insert into Workplace values(04, "CheckInDesk 3");
insert into Workplace values(05, "CheckInDesk 4");
insert into Workplace values(06, "CheckInDesk 5");
insert into Workplace values(07, "CheckInDesk 6");
insert into Workplace values(08, "CheckInDesk 7");
insert into Workplace values(09, "CheckInDesk 8");
insert into Workplace values(10, "CheckInDesk 9");
insert into Workplace values(11, "CheckInDesk 10");
insert into Workplace values(12, "Landing Strip 1");
insert into Workplace values(13, "Landing Strip 2");
insert into Workplace values(14, "Landing Strip 3");
insert into Workplace values(15, "Landing Strip 4");
insert into Workplace values(16, "Landing Strip 5");
insert into Workplace values(17, "Luggage Counter 1");
insert into Workplace values(18, "Luggage Counter 2");
insert into Workplace values(19, "Luggage Counter 3");
insert into Workplace values(20, "Luggage Counter 4");
insert into Workplace values(21, "Luggage Counter 5");
insert into Workplace values(22, "Gate 1");
insert into Workplace values(23, "Gate 2");
insert into Workplace values(24, "Gate 3");
insert into Workplace values(25, "Gate 4");
insert into Workplace values(26, "Gate 5");
insert into Workplace values(27, "Gate 6");
insert into Workplace values(28, "Gate 7");
insert into Workplace values(29, "Gate 8");
insert into Workplace values(30, "Gate 9");
insert into Workplace values(31, "Gate 10");
insert into Workplace values(32, "Gate 11");
insert into Workplace values(33, "Gate 12");
insert into Workplace values(34, "Gate 13");
insert into Workplace values(35, "Gate 14");
insert into Workplace values(36, "Gate 15");
insert into Workplace values(37, "Gate 16");
insert into Workplace values(38, "Gate 17");
insert into Workplace values(39, "Gate 18");
insert into Workplace values(40, "Gate 19");
insert into Workplace values(41, "Gate 20");

-- Workplace, GateName, IsBoarding --

insert into Gate values(22, "B1", 1);
insert into Gate values(23, "B2", 1);
insert into Gate values(24, "B3", 1);
insert into Gate values(25, "B4", 1);
insert into Gate values(26, "B5", 1);
insert into Gate values(27, "B6", 1);
insert into Gate values(28, "B7", 1);
insert into Gate values(29, "B8", 1);
insert into Gate values(30, "B9", 1);
insert into Gate values(31, "B10", 1);
insert into Gate values(32, "B11", 1);
insert into Gate values(33, "B12", 1);
insert into Gate values(34, "B13", 1);
insert into Gate values(35, "B14", 1);
insert into Gate values(36, "B15", 1);


insert into Gate values(37, "D1", 0);
insert into Gate values(38, "D2", 0);
insert into Gate values(39, "D3", 0);
insert into Gate values(40, "D4", 0);
insert into Gate values(41, "D5", 0);

-- Workplace, StripNum --

insert into Strip values(12, 1);
insert into Strip values(13, 2);
insert into Strip values(14, 3);
insert into Strip values(15, 4);
insert into Strip values(16, 5);

-- SSN, Name, BirthDate, PhoneNum, Country --
insert into Person values("448-17-7560", "Pedro Moas",                  "2000-06-29", "535810867", 0);
insert into Person values("268-60-4192", "Daniel Brandao",              "2000-06-29", "723877122", 0);
insert into Person values("488-10-3030", "Henrique Santos",             "2000-06-29", "105142167", 0);
insert into Person values("811-60-0024", "António Manuel Ferrao",       "2000-06-29", "805173159", 0);
insert into Person values("846-02-3946", "Joan Miro",                   "2000-06-29", "259874184", 1);
insert into Person values("664-01-6801", "Pablo Picasso",               "2000-06-29", "910649292", 1);
insert into Person values("559-51-8358", "Helen of Troy",               "2000-06-29", "483742214", 2);
insert into Person values("104-96-4339", "Gustave Eiffel",              "2000-06-29", "569954106", 2); --
insert into Person values("596-67-8963", "Robert de Niro",              "2000-06-29", "281466649", 3);
insert into Person values("755-28-0421", "Pope Benedict XVI",           "2000-06-29", "355905525", 3);
insert into Person values("421-17-7728", "Edsger Dijkstra",             "2000-06-29", "402440002", 4);
insert into Person values("915-95-0390", "John Oliver",                 "2000-06-29", "203583521", 6);
insert into Person values("867-91-5038", "Sir Patrick Stewart",         "2000-06-29", "248813141", 6); 
insert into Person values("157-85-9541", "Leonardo da Vinci",           "2000-06-29", "693149463", 7);
insert into Person values("522-33-8445", "Christopher Columbus",        "2000-06-29", "488004957", 7);
insert into Person values("636-97-4046", "Arnold Schwarzenegger",       "2000-06-29", "944968861", 8);
insert into Person values("188-55-2332", "Ingvar Kamprad",              "2000-06-29", "349314027", 11);
insert into Person values("117-47-0238", "Albert Einstein",             "2000-06-29", "257577076", 13);
insert into Person values("156-25-0110", "Plato",                       "2000-06-29", "171996380", 14);
insert into Person values("810-88-3403", "Aristotle",                   "2000-06-29", "708121533", 14);
insert into Person values("118-78-6068", "Bob Ross",                    "2000-06-29", "448849408", 15);
insert into Person values("534-94-1513", "Walt Disney",                 "2000-06-29", "409288029", 15);
insert into Person values("378-69-2529", "Wilbur Wright ",              "2000-06-29", "215093612", 15);
insert into Person values("509-07-3067", "Orville Wright ",             "2000-06-29", "291048841", 15);
insert into Person values("269-22-8437", "Joer Bolsanero",              "2000-06-29", "362733425", 17);
insert into Person values("783-23-3880", "Mohandas Karamchand Gandhi",  "2000-06-29", "662503275", 19);
insert into Person values("151-18-8196", "Sun Tzu",                     "2000-06-29", "816443907", 20);
insert into Person values("523-49-3356", "Yoko Ono",                    "2000-06-29", "509182591", 21);
insert into Person values("810-71-8816", "Vladimir Putin",              "2000-06-29", "310645601", 22);
insert into Person values("210-91-5976", "Mohammed Rashid Al Maktoum",  "2000-06-29", "786043209", 23);

-- SSN, Salary, NIF, WorkplaceID --

insert into Employee values("448-17-7560", 5530, "302739485", 0);
insert into Employee values("268-60-4192", 3957, "651994470", 0);
insert into Employee values("488-10-3030", 5392, "560056987", 0);
insert into Employee values("811-60-0024", 8320, "260807591", 0);
insert into Employee values("846-02-3946", 6358, "890419768", 1);
insert into Employee values("664-01-6801", 4557, "856261184", 1);
insert into Employee values("559-51-8358", 6768, "390999080", 2);
insert into Employee values("104-96-4339", 4149, "290615058", 2);

-- SSN, IDnum -- 

insert into Passenger values("596-67-8963", "6840709ZDS");
insert into Passenger values("755-28-0421", "1510776TBC");
insert into Passenger values("421-17-7728", "78984433YE");
insert into Passenger values("915-95-0390", "6028411ECC");
insert into Passenger values("867-91-5038", "2130083155");
insert into Passenger values("157-85-9541", "7062273U8M");
insert into Passenger values("522-33-8445", "6710988JRX");
insert into Passenger values("636-97-4046", "3757976ZPO");
insert into Passenger values("188-55-2332", "1910378C95");
insert into Passenger values("117-47-0238", "9491547JFP");
insert into Passenger values("156-25-0110", "81363070FP");
insert into Passenger values("810-88-3403", "6699436QCN");
insert into Passenger values("118-78-6068", "7182280DTJ");
insert into Passenger values("534-94-1513", "0137130WSY");
insert into Passenger values("378-69-2529", "0175048UUP");
insert into Passenger values("509-07-3067", "0547115FWG");
insert into Passenger values("269-22-8437", "3114525W1B");
insert into Passenger values("783-23-3880", "7489688SL9");
insert into Passenger values("151-18-8196", "6052663QTH");
insert into Passenger values("523-49-3356", "1113266GOQ");
insert into Passenger values("810-71-8816", "4627716EVL");
insert into Passenger values("210-91-5976", "2793427Z8I");

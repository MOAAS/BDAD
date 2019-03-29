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
insert into Workplace values(12, "Landing Runway 1");
insert into Workplace values(13, "Landing Runway 2");
insert into Workplace values(14, "Landing Runway 3");
insert into Workplace values(15, "Landing Runway 4");
insert into Workplace values(16, "Landing Runway 5");
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

-- Workplace, RunwayNum --

insert into Runway values(12, 1);
insert into Runway values(13, 2);
insert into Runway values(14, 3);
insert into Runway values(15, 4);
insert into Runway values(16, 5);

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
insert into Person values(18, "156-25-0110", "Plato",                       "2000-06-29", "171996380", 14);
insert into Person values(19, "810-88-3403", "Aristotle",                   "2000-06-29", "708121533", 14);
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
insert into IsBoss values(3, 3);
insert into IsBoss values(3, 4);
insert into IsBoss values(3, 5);
insert into IsBoss values(3, 6);
insert into IsBoss values(3, 7);

-- ClassID, ClassName --

insert into Class values(0, "Economy");
insert into Class values(1, "Premium Economy");
insert into Class values(2, "First Class");
insert into Class values(3, "Business");


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

insert into Person values(00, "448-17-7560", "Pedro Moas",                  "2000-06-29", "915810867", 0);
insert into Person values(01, "268-60-4192", "Daniel Brandao",              "2000-06-29", "913877122", 0);
insert into Person values(02, "488-10-3030", "Henrique Santos",             "2000-06-29", "915142167", 0);
insert into Person values(03, "811-60-0024", "António Manuel Ferrao",       "2000-06-29", "915173159", 0);
insert into Person values(04, "846-02-3946", "Joan Miro",                   "2000-06-29", "919874184", 1);
insert into Person values(05, "664-01-6801", "Pablo Picasso",               "2000-06-29", "910649292", 1);
insert into Person values(06, "559-51-8358", "Helen of Troy",               "2000-06-29", "913742214", 2);
insert into Person values(07, "104-96-4339", "Gustave Eiffel",              "2000-06-29", "919954106", 2); 
insert into Person values(08, "596-67-8963", "Robert de Niro",              "2000-06-29", "911466649", 3);
insert into Person values(09, "755-28-0421", "Pope Benedict XVI",           "2000-06-29", "915905525", 3);
insert into Person values(10, "421-17-7728", "Edsger Dijkstra",             "2000-06-29", "912440002", 4);
insert into Person values(11, "915-95-0390", "John Oliver",                 "2000-06-29", "913583521", 6);
insert into Person values(12, "867-91-5038", "Sir Patrick Stewart",         "2000-06-29", "918813141", 6); 
insert into Person values(13, "157-85-9541", "Leonardo da Vinci",           "2000-06-29", "913149463", 7);
insert into Person values(14, "522-33-8445", "Christopher Columbus",        "2000-06-29", "918004957", 7);
insert into Person values(15, "636-97-4046", "Arnold Schwarzenegger",       "2000-06-29", "914968861", 8);
insert into Person values(16, "188-55-2332", "Ingvar Kamprad",              "2000-06-29", "919314027", 11);
insert into Person values(17, "117-47-0238", "Albert Einstein",             "2000-06-29", "917577076", 13);
insert into Person values(18, "156-25-0110", "Plato",                       "2008-03-21", "911996380", 14);
insert into Person values(19, "810-88-3403", "Aristotle",                   "2006-08-28", "918121533", 14);
insert into Person values(20, "118-78-6068", "Bob Ross",                    "2000-06-29", "918849408", 15);
insert into Person values(21, "534-94-1513", "Walt Disney",                 "2000-06-29", "919288029", 15);
insert into Person values(22, "378-69-2529", "Wilbur Wright ",              "2000-06-29", "915093612", 15);
insert into Person values(23, "509-07-3067", "Orville Wright ",             "2000-06-29", "911048841", 15);
insert into Person values(24, "269-22-8437", "Joer Bolsanero",              "2000-06-29", "912733425", 17);
insert into Person values(25, "783-23-3880", "Mohandas Karamchand Gandhi",  "2000-06-29", "912503275", 19);
insert into Person values(26, "151-18-8196", "Sun Tzu",                     "2000-06-29", "916443907", 20);
insert into Person values(27, "523-49-3356", "Yoko Ono",                    "2000-06-29", "919182591", 21);
insert into Person values(28, "810-71-8816", "Vladimir Putin",              "2000-06-29", "910645601", 22);
insert into Person values(29, "210-91-5976", "Mohammed Rashid Al Maktoum",  "2000-06-29", "916043209", 23);

insert into Person values(30, "954-83-9964", "Seinotu Bondaje 01",  "1701-12-25", "912771740", 20);
insert into Person values(31, "588-61-0780", "Seinotu Bondaje 02",  "1702-12-25", "911279439", 20);
insert into Person values(32, "854-51-8110", "Seinotu Bondaje 03",  "1703-12-25", "917562043", 20);
insert into Person values(33, "373-59-4233", "Seinotu Bondaje 04",  "1704-12-25", "910346147", 20);
insert into Person values(34, "579-37-4063", "Seinotu Bondaje 05",  "1705-12-25", "915581757", 20);
insert into Person values(35, "410-66-7664", "Seinotu Bondaje 06",  "1706-12-25", "917832032", 20);
insert into Person values(36, "198-68-7184", "Seinotu Bondaje 07",  "1707-12-25", "913793175", 20);
insert into Person values(37, "633-88-2411", "Seinotu Bondaje 08",  "1708-12-25", "918863803", 20);
insert into Person values(38, "723-55-2405", "Seinotu Bondaje 09",  "1709-12-25", "916759701", 20);
insert into Person values(39, "808-23-7118", "Seinotu Bondaje 10",  "1710-12-25", "916007701", 20);
insert into Person values(40, "948-97-8210", "Seinotu Bondaje 11",  "1711-12-25", "916865313", 20);
insert into Person values(41, "760-53-1828", "Seinotu Bondaje 12",  "1712-12-25", "914555163", 20);
insert into Person values(42, "565-93-6364", "Seinotu Bondaje 13",  "1713-12-25", "916324755", 20);
insert into Person values(43, "985-33-3134", "Seinotu Bondaje 14",  "1714-12-25", "916187455", 20);
insert into Person values(44, "544-72-9577", "Seinotu Bondaje 15",  "1715-12-25", "913486510", 20);
insert into Person values(45, "734-71-3606", "Seinotu Bondaje 16",  "1716-12-25", "911052744", 20);
insert into Person values(46, "574-26-1068", "Seinotu Bondaje 17",  "1717-12-25", "912164010", 20);
insert into Person values(47, "555-63-7918", "Seinotu Bondaje 18",  "1718-12-25", "914709027", 20);
insert into Person values(48, "909-08-8310", "Seinotu Bondaje 19",  "1719-12-25", "916091648", 20);
insert into Person values(49, "129-89-0303", "Seinotu Bondaje 20",  "1720-12-25", "911300499", 20);
insert into Person values(50, "274-47-3434", "Seinotu Bondaje 21",  "1721-12-25", "915167025", 20);
insert into Person values(51, "107-06-8338", "Seinotu Bondaje 22",  "1722-12-25", "912735918", 20);
insert into Person values(52, "981-07-9892", "Seinotu Bondaje 23",  "1723-12-25", "910584077", 20);
insert into Person values(53, "214-67-9390", "Seinotu Bondaje 24",  "1724-12-25", "910752446", 20);
insert into Person values(54, "692-69-2956", "Seinotu Bondaje 25",  "1725-12-25", "919407775", 20);
insert into Person values(55, "378-01-8450", "Seinotu Bondaje 26",  "1726-12-25", "910264065", 20);
insert into Person values(56, "797-22-3113", "Seinotu Bondaje 27",  "1727-12-25", "913143468", 20);
insert into Person values(57, "952-51-2084", "Seinotu Bondaje 28",  "1728-12-25", "910884904", 20);
insert into Person values(58, "762-10-0732", "Seinotu Bondaje 29",  "1729-12-25", "917018333", 20);
insert into Person values(59, "574-93-1691", "Seinotu Bondaje 30",  "1730-12-25", "911279716", 20);
insert into Person values(60, "851-26-9650", "Seinotu Bondaje 31",  "1731-12-25", "916147411", 20);
insert into Person values(61, "847-52-0042", "Seinotu Bondaje 32",  "1732-12-25", "917732431", 20);
insert into Person values(62, "313-37-5088", "Seinotu Bondaje 33",  "1733-12-25", "911920070", 20);
insert into Person values(63, "634-41-2070", "Seinotu Bondaje 34",  "1734-12-25", "910743418", 20);
insert into Person values(64, "103-64-5313", "Seinotu Bondaje 35",  "1735-12-25", "916002408", 20);
insert into Person values(65, "329-06-3454", "Seinotu Bondaje 36",  "1736-12-25", "913184057", 20);
insert into Person values(66, "512-99-0456", "Seinotu Bondaje 37",  "1737-12-25", "918885390", 20);
insert into Person values(67, "100-54-8203", "Seinotu Bondaje 38",  "1738-12-25", "912640731", 20);
insert into Person values(68, "225-19-2370", "Seinotu Bondaje 39",  "1739-12-25", "911425866", 20);
insert into Person values(69, "995-89-3919", "Seinotu Bondaje 40",  "1740-12-25", "916367036", 20);
insert into Person values(70, "115-59-1817", "Seinotu Bondaje 41",  "1741-12-25", "919933117", 20);
insert into Person values(71, "322-72-6754", "Seinotu Bondaje 42",  "1742-12-25", "913139642", 20);
insert into Person values(72, "764-84-2099", "Seinotu Bondaje 43",  "1743-12-25", "914737284", 20);
insert into Person values(73, "199-09-0665", "Seinotu Bondaje 44",  "1744-12-25", "910011344", 20);
insert into Person values(74, "187-47-6966", "Seinotu Bondaje 45",  "1745-12-25", "913043397", 20);
insert into Person values(75, "598-90-6830", "Seinotu Bondaje 46",  "1746-12-25", "918810493", 20);
insert into Person values(76, "285-14-6716", "Seinotu Bondaje 47",  "1747-12-25", "916609551", 20);
insert into Person values(77, "419-80-0211", "Seinotu Bondaje 48",  "1748-12-25", "918549679", 20);
insert into Person values(78, "733-84-1715", "Seinotu Bondaje 49",  "1749-12-25", "913595623", 20);
insert into Person values(79, "971-83-9096", "Seinotu Bondaje 50",  "1750-12-25", "915949263", 20);



-- ID, Salary, NIF, WorkplaceID --

insert into Employee values(0, 5530, "302739485", 0);
insert into Employee values(1, 3957, "651994470", 0);
insert into Employee values(2, 5392, "560056987", 1);
insert into Employee values(3, 8320, "260807591", 1);
insert into Employee values(4, 6358, "890419768", 2);
insert into Employee values(5, 4557, "856261184", 2);
insert into Employee values(6, 6768, "390999080", 3);
insert into Employee values(7, 4149, "290615058", 3);

insert into Employee values(30, 600, "638876501", 4);
insert into Employee values(31, 600, "188473275", 5);
insert into Employee values(32, 600, "167381969", 6);
insert into Employee values(33, 600, "578758464", 7);
insert into Employee values(34, 600, "223056751", 8);
insert into Employee values(35, 600, "936433037", 9);
insert into Employee values(36, 600, "204337283", 10);
insert into Employee values(37, 600, "477153245", 11);
insert into Employee values(38, 600, "522612850", 12);
insert into Employee values(39, 600, "985944571", 13);
insert into Employee values(40, 600, "694902035", 14);
insert into Employee values(41, 600, "440276322", 15);
insert into Employee values(42, 600, "854600784", 16);
insert into Employee values(43, 600, "724207308", 17);
insert into Employee values(44, 600, "751257435", 18);
insert into Employee values(45, 600, "559255453", 19);
insert into Employee values(46, 600, "925807325", 20);
insert into Employee values(47, 600, "167566889", 21);
insert into Employee values(48, 600, "733137708", 22);
insert into Employee values(49, 600, "849394484", 23);
insert into Employee values(50, 600, "383684013", 24);
insert into Employee values(51, 600, "693066768", 25);
insert into Employee values(52, 600, "675874248", 26);
insert into Employee values(53, 600, "188115299", 27);
insert into Employee values(54, 600, "762705891", 28);
insert into Employee values(55, 600, "883468713", 29);
insert into Employee values(56, 600, "775659680", 30);
insert into Employee values(57, 600, "208897154", 31);
insert into Employee values(58, 600, "308532933", 32);
insert into Employee values(59, 600, "152013135", 33);
insert into Employee values(60, 600, "422173154", 34);
insert into Employee values(61, 600, "683915418", 35);
insert into Employee values(62, 600, "142130446", 36);
insert into Employee values(63, 600, "445828399", 37);
insert into Employee values(64, 600, "954040095", 38);
insert into Employee values(65, 600, "944193032", 39);
insert into Employee values(66, 600, "391432908", 40);
insert into Employee values(67, 600, "110698459", 41);
insert into Employee values(68, 600, "952662187", 42);
insert into Employee values(69, 600, "458100618", 43);
insert into Employee values(70, 600, "894203880", 44);
insert into Employee values(71, 600, "628794795", 45);
insert into Employee values(72, 600, "591535822", 46);
insert into Employee values(73, 600, "154588228", 47);
insert into Employee values(74, 600, "727843092", 48);
insert into Employee values(75, 600, "233951296", 49);
insert into Employee values(76, 600, "552468161", 50);
insert into Employee values(77, 600, "992525733", 51);
insert into Employee values(78, 600, "175201737", 52);
insert into Employee values(79, 600, "585623209", 53);

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

-- TripID --

insert into Trip values(00);
insert into Trip values(01);
insert into Trip values(02);
insert into Trip values(03);
insert into Trip values(04);
insert into Trip values(05);
insert into Trip values(06);
insert into Trip values(07);
insert into Trip values(08);
insert into Trip values(09);
insert into Trip values(10);
insert into Trip values(11);
insert into Trip values(12);
insert into Trip values(13);
insert into Trip values(14);
insert into Trip values(15);
insert into Trip values(16);
insert into Trip values(17);
insert into Trip values(18);
insert into Trip values(19);
insert into Trip values(20);
insert into Trip values(21);
insert into Trip values(22);
insert into Trip values(23);
insert into Trip values(24);
insert into Trip values(25);
insert into Trip values(26);
insert into Trip values(27);
insert into Trip values(28);
insert into Trip values(29);
insert into Trip values(30);
insert into Trip values(31);
insert into Trip values(32);
insert into Trip values(33);
insert into Trip values(34);
insert into Trip values(35);
insert into Trip values(36);
insert into Trip values(37);
insert into Trip values(38);
insert into Trip values(39);

-- Departures: 0 - 19, Arrivals: 20 - 39 --

-- TripID, AirportCode, DepartDate, DepartTime, ArriveDate, ArriveTime, Hours, Minutes, GateID, RunwayID, AirplaneID --
insert into Departure values(00, "LIS", "2019-04-10", "15:30", "2019-04-10", "16:30", 1, 00, 34, 24, 00); -- Tap Portugal
insert into Departure values(01, "OPO", "2019-04-11", "15:30", "2019-04-11", "15:45", 0, 15, 34, 24, 00); -- Tap Portugal
insert into Departure values(02, "GVA", "2019-05-15", "02:40", "2019-05-15", "05:40", 2, 00, 34, 24, 32); -- Swiss Air
insert into Departure values(03, "JFK", "2019-05-16", "19:40", "2019-05-16", "23:55", 8, 15, 34, 24, 18); -- Air Europa
insert into Departure values(04, "CPH", "2019-05-17", "12:40", "2019-05-17", "16:50", 3, 10, 34, 24, 02); -- EasyJet
insert into Departure values(05, "FRA", "2019-05-20", "23:40", "2019-05-21", "03:00", 2, 20, 34, 24, 06); -- Lufthansa
insert into Departure values(06, "YYZ", "2019-05-24", "05:40", "2019-05-24", "10:30", 8, 50, 34, 24, 34); -- Air Canada
insert into Departure values(07, "FCO", "2019-05-30", "14:40", "2019-05-30", "18:10", 2, 30, 34, 24, 14); -- Ryanair
insert into Departure values(08, "JFK", "2019-06-01", "22:00", "2019-06-02", "02:20", 8, 20, 34, 24, 32); -- Swiss Air
insert into Departure values(09, "DXB", "2019-06-03", "15:40", "2019-06-04", "03:25", 7, 45, 34, 24, 16); -- Emirates
insert into Departure values(10, "MAD", "2019-06-04", "11:25", "2019-06-04", "13:15", 0, 50, 34, 24, 02); -- Ryanair
insert into Departure values(11, "BER", "2019-06-04", "11:25", "2019-06-04", "15:15", 2, 50, 35, 25, 03); -- Ryanair
insert into Departure values(12, "AMS", "2019-06-04", "11:25", "2019-06-04", "14:45", 2, 20, 36, 26, 04); -- EasyJet
insert into Departure values(13, "BRU", "2019-06-05", "11:25", "2019-06-05", "14:35", 2, 10, 34, 24, 03); -- Ryanair
insert into Departure values(14, "MAD", "2019-06-05", "11:25", "2019-06-05", "13:25", 1, 00, 35, 25, 04); -- EasyJet
insert into Departure values(15, "GVA", "2019-06-05", "11:25", "2019-06-05", "14:25", 2, 00, 36, 26, 05); -- EasyJet
insert into Departure values(16, "FRA", "2019-06-06", "11:25", "2019-06-06", "14:45", 2, 20, 34, 24, 02); -- Ryanair
insert into Departure values(17, "FCO", "2019-06-06", "11:25", "2019-06-06", "14:45", 2, 20, 35, 25, 03); -- Ryanair
insert into Departure values(18, "MAD", "2019-06-06", "11:25", "2019-06-06", "13:10", 0, 45, 36, 26, 04); -- EasyJet
insert into Departure values(19, "BSB", "2019-06-10", "11:25", "2019-06-10", "18:40", 10, 15, 34, 24, 01); -- TAP

-- TripID, AirportCode, DepartDate, DepartTime, ArriveDate, ArriveTime, Hours, Minutes, GateID, RunwayID, AirplaneID, BeltID, DropoffDate, DropoffTime --
insert into Arrival values(20, "LIS", "2019-04-10", "19:30", "2019-04-10", "20:30", 1, 00, 34, 24, 00, 29, "2019-04-10", "20:30"); -- Tap Portugal
insert into Arrival values(21, "OPO", "2019-04-11", "19:30", "2019-04-11", "19:45", 0, 15, 34, 24, 00, 29, "2019-04-11", "19:45"); -- Tap Portugal
insert into Arrival values(22, "GVA", "2019-05-15", "06:40", "2019-05-15", "07:40", 2, 00, 34, 24, 32, 29, "2019-05-15", "07:40"); -- Swiss Air
insert into Arrival values(23, "JFK", "2019-05-16", "23:40", "2019-05-17", "11:55", 8, 15, 34, 24, 18, 29, "2019-05-17", "11:55"); -- Air Europa
insert into Arrival values(24, "CPH", "2019-05-17", "16:40", "2019-05-17", "18:50", 3, 10, 34, 24, 02, 29, "2019-05-17", "18:50"); -- EasyJet
insert into Arrival values(25, "FRA", "2019-05-20", "03:40", "2019-05-21", "05:00", 2, 20, 34, 24, 06, 29, "2019-05-21", "05:00"); -- Lufthansa
insert into Arrival values(26, "YYZ", "2019-05-24", "09:40", "2019-05-24", "14:30", 8, 50, 34, 24, 34, 29, "2019-05-24", "14:30"); -- Air Canada
insert into Arrival values(27, "FCO", "2019-05-30", "18:40", "2019-05-30", "20:10", 2, 30, 34, 24, 14, 29, "2019-05-30", "20:10"); -- Ryanair
insert into Arrival values(28, "JFK", "2019-06-01", "02:00", "2019-06-02", "14:20", 8, 20, 34, 24, 32, 29, "2019-06-02", "14:20"); -- Swiss Air
insert into Arrival values(29, "DXB", "2019-06-03", "19:40", "2019-06-03", "23:25", 7, 45, 34, 24, 16, 29, "2019-06-03", "23:25"); -- Emirates
insert into Arrival values(30, "MAD", "2019-06-04", "15:25", "2019-06-04", "15:15", 0, 50, 34, 24, 02, 29, "2019-06-04", "15:15"); -- Ryanair
insert into Arrival values(31, "BER", "2019-06-04", "15:25", "2019-06-04", "17:15", 2, 50, 35, 25, 03, 29, "2019-06-04", "17:15"); -- Ryanair
insert into Arrival values(32, "AMS", "2019-06-04", "15:25", "2019-06-04", "16:45", 2, 20, 36, 26, 04, 29, "2019-06-04", "16:45"); -- EasyJet
insert into Arrival values(33, "BRU", "2019-06-05", "15:25", "2019-06-05", "16:35", 2, 10, 34, 24, 03, 29, "2019-06-05", "16:35"); -- Ryanair
insert into Arrival values(34, "MAD", "2019-06-05", "15:25", "2019-06-05", "15:25", 1, 00, 35, 25, 04, 29, "2019-06-05", "15:25"); -- EasyJet
insert into Arrival values(35, "GVA", "2019-06-05", "15:25", "2019-06-05", "16:25", 2, 00, 36, 26, 05, 29, "2019-06-05", "16:25"); -- EasyJet
insert into Arrival values(36, "FRA", "2019-06-06", "15:25", "2019-06-06", "16:45", 2, 20, 34, 24, 02, 29, "2019-06-06", "16:45"); -- Ryanair
insert into Arrival values(37, "FCO", "2019-06-06", "15:25", "2019-06-06", "16:45", 2, 20, 35, 25, 03, 30, "2019-06-06", "16:45"); -- Ryanair
insert into Arrival values(38, "MAD", "2019-06-06", "15:25", "2019-06-06", "15:10", 0, 45, 36, 26, 04, 29, "2019-06-06", "15:10"); -- EasyJet
insert into Arrival values(39, "BSB", "2019-06-10", "15:25", "2019-06-11", "04:40", 10, 15, 34, 24, 01, 29, "2019-06-11", "04:40"); -- TAP

-- ID, Weight, Trip, Person --

insert into Luggage values(00, 29, 6, 08);
insert into Luggage values(01, 18, 6, 09);
insert into Luggage values(02, 27, 6, 10);
insert into Luggage values(03, 29, 6, 11);
insert into Luggage values(04, 20, 6, 12);
insert into Luggage values(05, 19, 6, 13);
insert into Luggage values(06, 14, 6, 14);
insert into Luggage values(07, 15, 6, 15);
insert into Luggage values(08, 18, 11, 16);
insert into Luggage values(09, 24, 11, 17);
insert into Luggage values(10, 23, 11, 18);
insert into Luggage values(11, 19, 11, 19);
insert into Luggage values(12, 22, 11, 20);
insert into Luggage values(13, 15, 11, 21);
insert into Luggage values(14, 15, 11, 22);
insert into Luggage values(15, 22, 11, 23);
insert into Luggage values(16, 16, 17, 22);
insert into Luggage values(17, 26, 17, 23);
insert into Luggage values(18, 15, 17, 24);
insert into Luggage values(19, 17, 17, 25);
insert into Luggage values(20, 25, 17, 26);
insert into Luggage values(21, 30, 17, 27);
insert into Luggage values(22, 18, 17, 28);
insert into Luggage values(23, 20, 17, 29);
insert into Luggage values(24, 12, 26, 08);
insert into Luggage values(25, 10, 26, 09);
insert into Luggage values(26, 23, 26, 10);
insert into Luggage values(27, 30, 26, 11);
insert into Luggage values(28, 20, 26, 12);
insert into Luggage values(29, 26, 26, 13);
insert into Luggage values(30, 26, 26, 14);
insert into Luggage values(31, 21, 26, 15);
insert into Luggage values(32, 24, 38, 22);
insert into Luggage values(33, 13, 38, 23);
insert into Luggage values(34, 17, 38, 24);
insert into Luggage values(35, 27, 38, 25);
insert into Luggage values(36, 15, 38, 26);
insert into Luggage values(37, 14, 38, 27);
insert into Luggage values(38, 24, 38, 28);
insert into Luggage values(39, 21, 38, 29);

-- TicketID, PassengerID, ArrivalID, DepartureID, SeatRow, SeatLetter, HasCheckedIn, HasEnteredBoardingZone, HasBoarded, ClassID --

insert into Ticket values(00, 08, NULL, 6, 12, "B", 0, 0, 0, 1);
insert into Ticket values(01, 09, NULL, 6, 16, "E", 0, 0, 0, 2);
insert into Ticket values(02, 10, NULL, 6, 18, "C", 0, 0, 0, 3);
insert into Ticket values(03, 11, NULL, 6, 05, "E", 0, 0, 0, 0);
insert into Ticket values(04, 12, NULL, 6, 08, "A", 0, 0, 0, 1);
insert into Ticket values(05, 13, NULL, 6, 08, "B", 0, 0, 0, 3);
insert into Ticket values(06, 14, NULL, 6, 11, "D", 0, 0, 0, 1);
insert into Ticket values(07, 15, NULL, 6, 11, "C", 0, 0, 0, 3);

insert into Ticket values(08, 16, NULL, 11, 12, "B", 0, 0, 0, 1);
insert into Ticket values(09, 17, NULL, 11, 16, "E", 0, 0, 0, 1);
insert into Ticket values(10, 18, NULL, 11, 18, "C", 0, 0, 0, 0);
insert into Ticket values(11, 19, NULL, 11, 05, "E", 0, 0, 0, 3);
insert into Ticket values(12, 20, NULL, 11, 08, "A", 0, 0, 0, 3);
insert into Ticket values(13, 21, NULL, 11, 08, "B", 0, 0, 0, 0);
insert into Ticket values(14, 22, NULL, 11, 11, "D", 0, 0, 0, 2);
insert into Ticket values(15, 23, NULL, 11, 11, "C", 0, 0, 0, 2);

insert into Ticket values(16, 22, NULL, 17, 12, "B", 0, 0, 0, 1);
insert into Ticket values(17, 23, NULL, 17, 16, "E", 0, 0, 0, 0);
insert into Ticket values(18, 24, NULL, 17, 18, "C", 0, 0, 0, 0);
insert into Ticket values(19, 25, NULL, 17, 05, "E", 0, 0, 0, 1);
insert into Ticket values(20, 26, NULL, 17, 08, "A", 0, 0, 0, 1);
insert into Ticket values(21, 27, NULL, 17, 08, "B", 0, 0, 0, 0);
insert into Ticket values(22, 28, NULL, 17, 11, "D", 0, 0, 0, 2);
insert into Ticket values(23, 29, NULL, 17, 11, "C", 0, 0, 0, 2);

insert into Ticket values(24, 08, 26, NULL, 12, "B", NULL, NULL, NULL, 1);
insert into Ticket values(25, 09, 26, NULL, 16, "E", NULL, NULL, NULL, 0);
insert into Ticket values(26, 10, 26, NULL, 18, "C", NULL, NULL, NULL, 0);
insert into Ticket values(27, 11, 26, NULL, 05, "E", NULL, NULL, NULL, 0);
insert into Ticket values(28, 12, 26, NULL, 08, "A", NULL, NULL, NULL, 2);
insert into Ticket values(29, 13, 26, NULL, 08, "B", NULL, NULL, NULL, 3);
insert into Ticket values(30, 14, 26, NULL, 11, "D", NULL, NULL, NULL, 0);
insert into Ticket values(31, 15, 26, NULL, 11, "C", NULL, NULL, NULL, 1);

insert into Ticket values(32, 22, 38, NULL, 12, "B", NULL, NULL, NULL, 2);
insert into Ticket values(33, 23, 38, NULL, 16, "E", NULL, NULL, NULL, 1);
insert into Ticket values(34, 24, 38, NULL, 18, "C", NULL, NULL, NULL, 1);
insert into Ticket values(35, 25, 38, NULL, 05, "E", NULL, NULL, NULL, 0);
insert into Ticket values(36, 26, 38, NULL, 08, "A", NULL, NULL, NULL, 2);
insert into Ticket values(37, 27, 38, NULL, 08, "B", NULL, NULL, NULL, 3);
insert into Ticket values(38, 28, 38, NULL, 11, "D", NULL, NULL, NULL, 2);
insert into Ticket values(39, 29, 38, NULL, 11, "C", NULL, NULL, NULL, 0);




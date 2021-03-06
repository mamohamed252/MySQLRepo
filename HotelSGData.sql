USE HOTELSG;

INSERT INTO Type(TypeId, `Name`, StandardOccupancy, MaximumOccupancy, BasePrice, ExtraPersonCharge) VALUES
('1', 'Single', '2', '2', '149.99', '00.00'),
('2', 'Double', '2', '4', '174.99', '10.00'),
('3', 'Suite', '3', '8', '399.99', '20.00');

INSERT INTO Room(RoomId, ADAACCESS, TypeId) VALUES
('201', '0', '2'),
('202', '1', '2'),
('203', '0', '2'),
('204', '1', '2'),
('205', '0', '1'),
('206', '1', '1'),
('207', '0', '1'),
('208', '1', '1'),
('301', '0', '2'),
('302', '1', '2'),
('303', '0', '2'),
('304', '1', '2'),
('305', '0', '1'),
('306', '1', '1'),
('307', '0', '1'),
('308', '1', '1'),
('401', '1', '3'),
('402', '1', '3');

INSERT INTO Amenity(AmenityId, `Name`) VALUES
('1', 'Microwave'),
('2', 'Jacuzzi'),
('3', 'Refigerator'),
('4', 'Oven');


INSERT INTO AmenityRoom(RoomId, AmenityId) VALUES
('201','1'),
('201', '2'),
('202','3'),
('203', '1'),
('203','2'),
('204', '3'),
('205','1'),
('205', '3'),
('205', '2'),
('206', '3'),
('206','1'),
('207', '1'),
('207', '3'),
('207','2'),
('208', '1'),
('208','3'),
('301', '2'),
('301','1'),
('302', '3'),
('303','1'),
('303', '2'),
('304','3'),
('305', '1'),
('305','3'),
('305', '2'),
('306','1'),
('306', '3'),
('307','1'),
('307', '2'),
('308', '1'),
('308','3'),
('401', '1'),
('401','3'),
('401', '4'),
('402','1'),
('402', '3'),
('402', '4');

INSERT INTO Guest(GuestId, FirstName, LastName, City, State, Address, Zip, Phone) VALUES
('1', 'Your', 'Name', '87 Queen St.', 'Drexel Hill', 'PA',	'19026', '2318932755'),
('2', 'Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '2915530508'),
('3', 'Bettyann', 'Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '99654', '4782779632'),
('4', 'Duane', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '3084940198'),
('5', 'Karie', 'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '2147300298'),
('6', 'Aurore', 'Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '3775070974'),
('7', 'Zachery', 'Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '8144852615'),
('8', 'Jeremiah', 'Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '2794910960'),
('9', 'Walter', 'Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '4463966785'),
('10', 'Wilfred', 'Vise', '77 West Surrey Street', 'Oswego', 'NY',	'13126', '8347271001'),
('11', 'Maritza', 'Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '4463516860'),
('12', 'Joleen', 'Tison', '87 Queen St.', 'Drexel Hill', 'PA',	'19026', '2318932755');


INSERT INTO Reservation(ReservationId, Adult, Children, StartDate, EndDate, TotalRoomCost, GuestId) VALUES
('1', '1', '0', '2023-02-02', '2023-02-04', '299.98', '2' ),
('2', '2',	'1', '2023-02-05', '2023-02-10','999.95', '3'),
('3', '2',	'0', '2023-02-22', '2023-02-24', '349.98', '4'),
('4', 2, 2,	'2023-03-06', '2023-03-07', '199.99', '5'),
('5', '1',	'1', '2023-03-17', '2023-03-20', '524.97', '1'),
('6', '3',	'0', '2023-03-18', '2023-03-23', '924.95', '6'),
('7', '2',	'2', '2023-03-29',	'2023-03-31', '349.98', '7'),
('8', '2',	'0', '2023-03-31', '2023-04-05', '874.95', '8'),
('9', '1', '0',	'2023-04-09', '2023-04-13', '799.96', '9'),
('10' ,'1', '1', '2023-04-23', '2023-04-24', '174.99', '10'),
('11', '2','4',  '2023-05-30',	'2023-06-02', '1199.97', '11'),
('12', '2', '0', '2023-06-10', '2023-06-14', '599.96', '12'),
('13', '1', '0', '2023-06-10', '2023-06-14', '599.96', '12'),
('14', '3',	'0', '2023-06-17',	'2023-06-18', '184.99', '6'),
('15', '2',	'0', '2023-06-28', '2023-07-02', '699.96', '1'),
('16', '3',	'1', '2023-07-13', '2023-07-14', '184.99', '9'),
('17', '4',	'2', '2023-07-18', '2023-07-21', '1259.97', '10'),
('18', '2',	'1', '2023-07-28', '2023-07-29', '199.99', '3'),
('19', '1',	'0', '2023-08-30',	'2023-09-01', '349.98', '3'),
('20',	'2', '0', '2023-09-16', '2023-09-17', '149.99', '2'),
('21', '2',	'2', '2023-09-13', '2023-09-15', '399.98', '5'),
('22', '2',	'2', '2023-11-22', '2023-11-25', '1199.97', '4'),
('23',	'2', '0', '2023-11-22',	'2023-11-25', '449.97', '2'),
('24',	'2', '2', '2023-11-22', '2023-11-25', '599.97', '2'),
('25', '2',	'0', '2023-12-24',	'2023-12-28',  '699.96', '11');

INSERT INTO ReservationRoom(RoomId, ReservationId) VALUES
('308', '1'),
('203','2'),
('305', '3'),
('201', '4'),
('307', '5'),
('302', '6'),

('202', '7'),
('304','8'),
('301', '9'),
('207', '10'),
('401', '11'),

('206', '12'),
('208','13'),
('304', '14'),
('205', '15'),
('204', '16'),

('401', '17'),
('303','18'),
('305', '19'),
('208', '20'),
('203', '21'),
('401', '22'),
('206','23'),
('301', '24'),
('302', '25');




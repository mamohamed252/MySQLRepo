DROP DATABASE IF EXISTS HOTELSG;

CREATE DATABASE HOTELSG;

USE HOTELSG;

CREATE TABLE `Type` (
TypeId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`Name` VARCHAR(45) NOT NULL,
StandardOccupancy INT NOT NULL,
MaximumOccupancy INT NOT NULL,
BasePrice DECIMAL(5,2) NOT NULL,
ExtraPersonCharge DECIMAL(4,2) NOT NULL
);

CREATE TABLE Room (
RoomId INT PRIMARY KEY NOT NULL, 
ADAACCESS BOOL,
TypeId INT,
-- FK TypeId
FOREIGN KEY fk_Type (TypeId)
	REFERENCES `Type` (TypeId)
);

CREATE TABLE Amenity(
AmenityId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`Name` VARCHAR(45) NOT NULL
);

CREATE TABLE AmenityRoom(
RoomId INT NOT NULL,
AmenityId INT NOT NULL,
PRIMARY KEY pk_AmenityRoom(RoomId, AmenityId),
FOREIGN KEY fk_AmenityRoom_Room (RoomId)
	REFERENCES Room (RoomId),
FOREIGN KEY fk_AmenityRoom_Amenity (AmenityId)
	REFERENCES Amenity (AmenityId)

);

CREATE TABLE Guest(
GuestId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`FirstName` VARCHAR(45) NOT NULL,
`LastName` VARCHAR(45) NOT NULL,
`City` VARCHAR(45) NOT NULL,
`State` VARCHAR(45) NOT NULL,
`Address` VARCHAR(45) NOT NULL,
`Zip` CHAR(5) NOT NULL,
`Phone` CHAR(10) NOT NULL
);


CREATE TABLE Reservation(
ReservationId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`Adult` INT NOT NULL,
`Children` INT NOT NULL,
`StartDate` VARCHAR(45) NOT NULL,
`EndDate` VARCHAR(45) NOT NULL,
`TotalRoomCost` DECIMAL(6,2) NOT NULL,
GuestId INT,
-- FK GuestId
FOREIGN KEY fk_Guest (GuestId)
	REFERENCES Guest(GuestId)
);

CREATE TABLE ReservationRoom(
RoomId INT NOT NULL,
ReservationId INT NOT NULL,
PRIMARY KEY fk_ReservationRoom(RoomId, ReservationId),
-- FK RoomId, ReservationId
FOREIGN KEY fk_ReservationRoom_Room (RoomId)
	REFERENCES Room (RoomId),
FOREIGN KEY fk_ReservationRoom_Reservation (ReservationId)
	REFERENCES Reservation (ReservationId)
);
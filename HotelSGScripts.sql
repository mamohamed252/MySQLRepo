USE HOTELSG;

SELECT 
g.FirstName,
g.LastName,
r.RoomId,
rv.StartDate,
rv.EndDate
FROM Guest g
JOIN Reservation rv ON g.GuestId = rv.GuestId
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
JOIN Room r ON rr.RoomId = r.RoomId
WHERE rv.StartDate <= '2023-07-01';


SELECT 
g.FirstName,
g.LastName,
r.RoomId,
a.`Name`,
rv.StartDate,
rv.EndDate
FROM Guest g
JOIN Reservation rv ON g.GuestId = rv.GuestId
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
JOIN Room r ON rr.RoomId = r.RoomId
JOIN AmenityRoom ar ON r.RoomId = ar.RoomId
Join Amenity a On ar.AmenityId = a.AmenityId
WHERE a.`Name` Like '%Jacuzzi%';

SELECT 
g.GuestId,
g.FirstName,
g.LastName,
r.RoomId,
rv.Adult +
rv.Children,
rv.StartDate,
rv.EndDate
FROM Guest g
JOIN Reservation rv ON g.GuestId = rv.GuestId
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
JOIN Room r ON rr.RoomId = r.RoomId
WHERE g.GuestId = '1';


SELECT 
r.RoomId,
rv.ReservationId,
t.BasePrice
FROM Reservation rv
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
JOIN Room r ON rr.RoomId = r.RoomId
JOIN `Type` t ON r.TypeId = t.TypeId
WHERE rv.ReservationId >= 0;

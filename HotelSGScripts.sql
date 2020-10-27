USE HOTELSG;

-- question 1
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
WHERE rv.EndDate BETWEEN '2023-07-01' AND '2023-07-31';

-- question 2
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

-- question 3
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
WHERE g.GuestId = '2';

-- question 4
SELECT 
r.RoomId,
rv.ReservationId,
t.BasePrice
FROM Reservation rv
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
RIGHT JOIN Room r ON rr.RoomId = r.RoomId
 JOIN `Type` t ON r.TypeId = t.TypeId
ORDER BY r.RoomId DESC;

-- question 5
SELECT 
r.RoomId,
rv.Adult,
rv.Children,
rv.ReservationId,
t.BasePrice,
t.MaximumOccupancy,
rv.StartDate,
rv.EndDate

FROM Reservation rv
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
JOIN Room r ON rr.RoomId = r.RoomId
JOIN `Type` t ON r.TypeId = t.TypeId
WHERE t.MaximumOccupancy >= 3
And rv.StartDate BETWEEN '2023-04-01' AND '2023-04-31'
AND rv.EndDate BETWEEN '2023-04-01' AND '2023-04-31';


-- question 6

SELECT 
g.FirstName,
g.LastName,
Count(rv.ReservationId) AS count
FROM Guest g
JOIN Reservation rv ON g.GuestId = rv.GuestId
JOIN ReservationRoom rr ON rv.ReservationId = rr.ReservationId
JOIN Room r ON rr.RoomId = r.RoomId
GROUP BY g.FirstName, g.LastName
ORDER BY count DESC, g.LastName;

-- Question 7

SELECT 
g.FirstName,
g.LastName,
g.Phone,
g.Address
FROM Guest g
WHERE g.Phone LIKE '%2915530508%';

SELECT 
g.FirstName,
g.LastName,
g.Phone,
g.Address
FROM Guest g
WHERE g.Phone = '2915530508';
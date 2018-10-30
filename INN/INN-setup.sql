#Jake Veazey | wveazey@calpoly.edu

CREATE TABLE Rooms (
   RoomId CHAR(3) PRIMARY KEY,
   roomName VARCHAR(30) UNIQUE,
   beds INTEGER,
   bedType VARCHAR(10),
   maxOccupancy INTEGER,
   basePrice INTEGER,
   decor VARCHAR(20)
);

CREATE TABLE reservations (
   Code INTEGER PRIMARY KEY,
   Room CHAR(3) REFERENCES rooms (Id),
   CheckIn DATE,
   CheckOut DATE,
   Rate FLOAT,
   LastName char(20),
   FirstName char(20),
   Adults INTEGER,
   Kids INTEGER
);

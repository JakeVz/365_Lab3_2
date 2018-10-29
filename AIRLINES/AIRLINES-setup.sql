-- Abhinav Singh
-- asingh54@calpoly.edu

CREATE TABLE airports100(
   City VARCHAR(30),
   AirportCode VARCHAR(10),
   AirportName VARCHAR(50),
   Country VARCHAR(30),
   CountryAbbrev VARCHAR(10),
   PRIMARY KEY (AirportCode)
);

CREATE TABLE airlines (
   Id INT PRIMARY KEY,
   Airline VARCHAR(30),
   Abbreviation VARCHAR(20),
   Country VARCHAR(10),
   UNIQUE (Airline)
);

CREATE TABLE flights(
   Airline INT,
   FlightNo INT,
   SourceAirport VARCHAR(10),
   DestAirport VARCHAR(10),
   PRIMARY KEY (Airline, FlightNo),
   FOREIGN KEY(SourceAirport) REFERENCES airports100(AirportCode),
   FOREIGN KEY(DestAirport) REFERENCES airports100(AirportCode),
   FOREIGN KEY(Airline) REFERENCES airlines(Id)
);
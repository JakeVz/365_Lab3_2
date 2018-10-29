-- Abhinav Singh and Jake Veazey
-- asingh54@calpoly.edu and 

-- Removes all flights that are not from and to AKI
DELETE FROM flights WHERE NOT (SourceAirport = 'AKI' OR DestAirport = 'AKI');
-- Update flights not operated by one of the three airlines to have unique flightNos by increasing by 2000
UPDATE flights SET FlightNo=FlightNo+2000 WHERE NOT (Airline = 7 OR Airline = 10 OR Airline = 12);

-- This will increment all even number flights by 10k in order to identify them as even flights used later on
UPDATE flights SET FlightNo=FlightNo + 10000 WHERE NOT (Airline = 7 OR Airline = 10 OR Airline = 12) AND FlightNo%2=0;

-- Since all our even flights are over 10k, when we change these odd flights it wont be marked as potentially even in the later script
-- Here we are decreasing all odd number flights by 1
UPDATE flights SET FlightNo = FlightNo - 1 WHERE FlightNo % 2 = 1 AND NOT (Airline = 7 OR Airline = 10 OR Airline = 12);

-- Set all even number flights back to their normal number + 1
UPDATE flights SET FlightNo = FlightNo - 9999 WHERE (FlightNo % 2 = 0 AND FlightNo >= 10000) AND NOT (Airline = 7 OR Airline = 10 OR Airline = 12);

-- Replace any airline not AirTran or Virgin with Continental
UPDATE flights SET Airline = 7 WHERE NOT (Airline=10 OR Airline = 12);
-- Display all data in flights ordered by airline and flight no
SELECT * FROM flights ORDER BY Airline, FlightNo;
ALTER TABLE Rooms ADD COLUMN (description VARCHAR(200));

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Recluse and defiance';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Interim but salutary';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Abscond or bolster';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Mendicant with cryptic';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Harbinger but bequest';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Immutable before decorum';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Thrift and accolade';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Convoke and sanguine';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Riddle to exculpate';

UPDATE Rooms
SET description = 'This is a test Description'
WHERE roomName = 'Frugal not apropos';

SELECT *
FROM Rooms
ORDER BY RoomId \G

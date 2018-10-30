-- asingh54@calpoly.edu and wveazey@calpoly.edu

-- Abhinav Singh and Jake Veazey

ALTER TABLE Rooms ADD COLUMN (description VARCHAR(200));

UPDATE Rooms
SET description = 'This is an amazing room with a view of seven giraffes. Theyre hard to see, all alone, and stubborn.'
WHERE roomName = 'Recluse and defiance';

UPDATE Rooms
SET description = 'Have you ever tried to eat an entire watermelon? Well, not only will you be able to here, we encourage it'
WHERE roomName = 'Interim but salutary';

UPDATE Rooms
SET description = 'Wowza... Literally Wowza is all I can say. Youll be running from here though -- were creepy. Happy Halloween'
WHERE roomName = 'Abscond or bolster';

UPDATE Rooms
SET description = 'I dont not not not not not need $200'
WHERE roomName = 'Mendicant with cryptic';

UPDATE Rooms
SET description = 'You will have an in house guy who yells hear yee hear yee for you with every text you get'
WHERE roomName = 'Harbinger but bequest';

UPDATE Rooms
SET description = 'This room was made with 100% gold 10,000 years ago and has not changed'
WHERE roomName = 'Immutable before decorum';

UPDATE Rooms
SET description = 'You will be the best guest here if you stay in this room! (We make all our medals with Snapple tops)'
WHERE roomName = 'Thrift and accolade';

UPDATE Rooms
SET description = 'THE WORLD IS ENDING. Meeting will be held at 9pm. World will end at 9:45 sharp. We have cake'
WHERE roomName = 'Convoke and sanguine';

UPDATE Rooms
SET description = 'You will be framed for murder, but you will be set free if you can answer what is red but smells like blue paint'
WHERE roomName = 'Riddle to exculpate';

UPDATE Rooms
SET description = 'Cheapest room in the INN, but have you seen the one made from Gold?'
WHERE roomName = 'Frugal not apropos';

SELECT *
FROM Rooms
ORDER BY RoomId \G

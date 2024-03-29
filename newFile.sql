CREATE DATABASE hotels_application;

USE hotels_application;

CREATE TABLE hotels (hotel_id INT PRIMARY KEY AUTO_INCREMENT,
hotel_name VARCHAR(255) NOT NULL,
address VARCHAR(255),
phone VARCHAR(255),
email VARCHAR (255)
);
 
 INSERT INTO hotels (hotel_name) VALUES ('Miami Beach Villa');
 INSERT INTO hotels (hotel_name) VALUES ('Miami Beach House');
 
 DELETE FROM hotels WHERE hotel_id = 3;
 
 SELECT * FROM hotels;

 SELECT hotel_id, hotel_name FROM hotels; -- Hämta vissa kolumner för alla hotell
 
 SELECT hotel_id, hotel_name FROM hotels WHERE hotel_id = 1; -- Hämta vissa kolumner för ett hotell
 
 UPDATE hotels SET 
	address='Miami street 5', 
    phone='0761234567',
    email='miami@hotel.com'
WHERE hotel_id=1;

UPDATE hotels SET 
	address='Main Street 23', 
    phone='0761234567',
    email='miamihouse@hotel.com'
WHERE hotel_id=5;



INSERT INTO hotels (hotel_name) VALUES ('mumbojumbo');

SELECT * FROM hotels WHERE hotel_name = 'mumbojumbo';

DELETE FROM hotels WHERE hotel_id = 6;

SELECT * FROM hotels;
 

CREATE TABLE rooms(
        room_id INT PRIMARY KEY AUTO_INCREMENT,
        hotel_id INT,
        room_number VARCHAR(255) NOT NULL,
        room_type VARCHAR (255),
        price DECIMAL (10, 2),
        FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id)
        
        );
        

INSERT INTO rooms (hotel_id, room_number, room_type, price)
VALUES (1, 101, 'Single', 100),
	(1, 102, 'Double', 150),
    (5, 101, 'Single', 120),
	(5, 102, 'Double', 200);


SELECT * FROM rooms;


CREATE TABLE guests (
	guest_id INT PRIMARY KEY AUTO_INCREMENT,
    room_id INT NOT NULL,
    guest_name VARCHAR(255) NOT NULL,
	phone VARCHAR(255),
    email VARCHAR(255),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);


INSERT INTO guests (room_id, guest_name, phone, email)
	VALUES (5, 'Kalle', '076-123 45 67', 'kalle@example.com'),
    (6, 'Anna', '076-123 45 68', NULL),
    (7, 'Mats', '076-123 45 69', 'mats@example.com'),
    (8, 'Petra', '076-123 45 60', NULL);

SELECT * FROM guests;

ALTER TABLE rooms ADD COLUMN stars INT;
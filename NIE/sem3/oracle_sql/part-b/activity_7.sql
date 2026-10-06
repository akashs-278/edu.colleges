-- =========================================
-- CREATE TABLES
-- =========================================

CREATE TABLE Train_Details (
    Train_no VARCHAR(10),
    Train_name VARCHAR(15),
    Start_place VARCHAR(10),
    Destination VARCHAR(10),
    PRIMARY KEY (Train_no)
);

CREATE TABLE Availability (
    Train_no VARCHAR(10),
    Class VARCHAR(15),
    Start_place VARCHAR(15),
    Destination VARCHAR(10),
    No_of_seats NUMBER,
    FOREIGN KEY (Train_no) REFERENCES Train_Details(Train_no)
);


-- =========================================
-- INSERT INTO Train_Details
-- =========================================

INSERT INTO Train_Details
VALUES ('RJD16','Rajdhani Express','Bangalore','Mumbai');

INSERT INTO Train_Details
VALUES ('UDE04','Udhyan Express','Chennai','Hyderabad');

INSERT INTO Train_Details
VALUES ('KKE55','Karnataka Express','Bangalore','Chennai');

INSERT INTO Train_Details
VALUES ('CSE3','Shivaji Express','Coimbatore','Bangalore');

INSERT INTO Train_Details
VALUES ('JNS8','Janashatabdi','Bangalore','Salem');


-- =========================================
-- INSERT INTO Availability
-- =========================================

INSERT INTO Availability
VALUES ('RJD16','Sleeper Class','Bangalore','Mumbai',15);

INSERT INTO Availability
VALUES ('UDE04','First Class','Chennai','Hyderabad',22);

INSERT INTO Availability
VALUES ('KKE55','First Class AC','Bangalore','Chennai',15);

INSERT INTO Availability
VALUES ('CSE3','Second Class','Coimbatore','Bangalore',8);

INSERT INTO Availability
VALUES ('JNS8','Sleeper Class','Bangalore','Salem',18);


-- =========================================
-- 1. CREATE VIEW sleeper
-- =========================================

CREATE VIEW sleeper AS
SELECT Train_no, Start_place, Destination
FROM Availability;

SELECT * FROM sleeper;


-- a. INSERT NEW RECORD

INSERT INTO sleeper
VALUES ('CSE3','Mysore','Bangalore');

SELECT * FROM sleeper;


-- b. UPDATE DESTINATION

UPDATE sleeper
SET Destination = 'Manglore'
WHERE Train_no = 'RJD16';

SELECT * FROM sleeper;


-- c. DELETE KKE55

DELETE FROM sleeper
WHERE Train_no = 'KKE55';

SELECT * FROM sleeper;


-- =========================================
-- 2. CREATE VIEW details
-- =========================================

CREATE VIEW details AS
SELECT Train_Details.Train_no,
       Train_name,
       Class
FROM Train_Details, Availability
WHERE Train_Details.Train_no = Availability.Train_no;

SELECT * FROM details;


-- =========================================
-- 3. CREATE VIEW total_seats
-- =========================================

CREATE VIEW total_seats AS
SELECT Start_place,
       SUM(No_of_seats) AS total_seats
FROM Availability
GROUP BY Start_place;

SELECT * FROM total_seats;


-- =========================================
-- 4. RENAME VIEW
-- =========================================

RENAME sleeper TO class;

SELECT * FROM class;


-- =========================================
-- 5. DELETE VIEW
-- =========================================

DROP VIEW details;


-- =========================================
-- COMMIT
-- =========================================

COMMIT;

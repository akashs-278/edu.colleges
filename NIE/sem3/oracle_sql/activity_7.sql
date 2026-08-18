-- Table Setup & Insertion
CREATE TABLE Train_Details (
    Train_No VARCHAR2(10) PRIMARY KEY,
    Train_Name VARCHAR2(30),
    Start_Place VARCHAR2(30),
    Destination VARCHAR2(30)
);

CREATE TABLE Availability (
    Train_No VARCHAR2(10),
    Class VARCHAR2(30),
    Start_Place VARCHAR2(30),
    Destination VARCHAR2(30),
    No_of_seats NUMBER
);

INSERT INTO Train_Details VALUES ('RJD16', 'Rajdhani Express', 'Bangalore', 'Mumbai');
INSERT INTO Train_Details VALUES ('UDE04', 'Udhyan Express', 'Chennai', 'Hyderabad');
INSERT INTO Train_Details VALUES ('KKE55', 'Karnataka Express', 'Bangalore', 'Chennai');
INSERT INTO Train_Details VALUES ('CSE3', 'Shivaji Express', 'Coimbatore', 'Bangalore');
INSERT INTO Train_Details VALUES ('JNS8', 'Janashatabdi', 'Bangalore', 'Salem');

INSERT INTO Availability VALUES ('RJD16', 'Sleeper Class', 'Bangalore', 'Mumbai', 15);
INSERT INTO Availability VALUES ('UDE04', 'First Class', 'Chennai', 'Hyderabad', 22);
INSERT INTO Availability VALUES ('KKE55', 'First Class AC', 'Bangalore', 'Chennai', 15);
INSERT INTO Availability VALUES ('CSE3', 'Second Class', 'Coimbatore', 'Bangalore', 8);
INSERT INTO Availability VALUES ('JNS8', 'Sleeper Class', 'Bangalore', 'Salem', 18);

COMMIT;

-- 1. Create a view sleeper to display train number, start place, destination which have sleeper class and perform the following:
CREATE VIEW sleeper AS 
SELECT Train_No, Start_Place, Destination 
FROM Availability 
WHERE Class = 'Sleeper Class';

-- 1.a. Insert new record.
INSERT INTO sleeper VALUES ('MYS01', 'Mysore', 'Bangalore');

-- 1.b. Update destination='Manglore' where train no='RJD16'.
UPDATE sleeper 
SET Destination = 'Manglore' 
WHERE Train_No = 'RJD16';

-- 1.c. Delete a record which has train no='KKE55'
DELETE FROM sleeper 
WHERE Train_No = 'KKE55';

-- 2. Create a view detail to display train number, train name, and class.
CREATE VIEW detail AS 
SELECT t.Train_No, t.Train_Name, a.Class 
FROM Train_Details t 
JOIN Availability a ON t.Train_No = a.Train_No;

-- 3. Create a view total_seats to display train number, start place, use COUNT function on No_of_seats, group by start place and perform the following:
CREATE VIEW total_seats AS 
SELECT Train_No, Start_Place, COUNT(No_of_seats) AS Total_Seats 
FROM Availability 
GROUP BY Train_No, Start_Place;

-- 3.a. Insert new record.
INSERT INTO total_seats (Train_No, Start_Place) VALUES ('NEW01', 'Delhi');

-- 3.b. Update start place='Hubli' where train no='JNS8'.
UPDATE total_seats 
SET Start_Place = 'Hubli' 
WHERE Train_No = 'JNS8';

-- 3.c. Delete the last row of the view.
DELETE FROM total_seats 
WHERE Train_No = 'JNS8';

-- 4. Rename view sleeper to class.
RENAME sleeper TO class;

-- 5. Delete view details.
DROP VIEW detail;

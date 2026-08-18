-- Table Setup & Insertion
CREATE TABLE Account (
    Account_No VARCHAR2(15) PRIMARY KEY,
    Cust_Name VARCHAR2(30),
    Branch_ID VARCHAR2(10)
);

CREATE TABLE Branch (
    Branch_ID VARCHAR2(10) PRIMARY KEY,
    Branch_Name VARCHAR2(30),
    Branch_City VARCHAR2(30)
);

CREATE TABLE Depositor (
    Account_No VARCHAR2(15),
    Branch_ID VARCHAR2(10),
    Balance NUMBER(12, 2)
);

CREATE TABLE Loan (
    Account_No VARCHAR2(15),
    Branch_ID VARCHAR2(10),
    Balance NUMBER(12, 2)
);

INSERT INTO Account VALUES ('AE0012856', 'Reena', 'SB002');
INSERT INTO Account VALUES ('AE1185698', 'Akhil', 'SB001');
INSERT INTO Account VALUES ('AE1203996', 'Daniel', 'SB004');
INSERT INTO Account VALUES ('AE1225889', 'Roy', 'SB002');
INSERT INTO Account VALUES ('AE8532166', 'Sowparnika', 'SB003');
INSERT INTO Account VALUES ('AE8552266', 'Anil', 'SB003');
INSERT INTO Account VALUES ('AE1003996', 'Saathwik', 'SB004');
INSERT INTO Account VALUES ('AE1100996', 'Swarna', 'SB002');

INSERT INTO Branch VALUES ('SB001', 'Malleshwaram', 'Bangalore');
INSERT INTO Branch VALUES ('SB002', 'MG Road', 'Bangalore');
INSERT INTO Branch VALUES ('SB003', 'MG Road', 'Mysore');
INSERT INTO Branch VALUES ('SB004', 'Jayanagar', 'Mysore');

INSERT INTO Depositor VALUES ('AE0012856', 'SB002', 12000);
INSERT INTO Depositor VALUES ('AE1203996', 'SB004', 58900);
INSERT INTO Depositor VALUES ('AE8532166', 'SB003', 40000);
INSERT INTO Depositor VALUES ('AE1225889', 'SB002', 150000);

INSERT INTO Loan VALUES ('AE1185698', 'SB001', 102000);
INSERT INTO Loan VALUES ('AE8552266', 'SB003', 40000);
INSERT INTO Loan VALUES ('AE1003996', 'SB004', 15000);
INSERT INTO Loan VALUES ('AE1100996', 'SB002', 100000);

COMMIT;

-- 1. Display the total number of accounts present in each branch.
SELECT Branch_ID, COUNT(Account_No) AS Total_Accounts 
FROM Account 
GROUP BY Branch_ID;

-- 2. Display the total loan amount in each branch.
SELECT Branch_ID, SUM(Balance) AS Total_Loan_Amount 
FROM Loan 
GROUP BY Branch_ID;

-- 3. Display the total deposited amount in each branch in descending order.
SELECT Branch_ID, SUM(Balance) AS Total_Deposited 
FROM Depositor 
GROUP BY Branch_ID 
ORDER BY Total_Deposited DESC;

-- 4. Display the maximum and minimum loan amount present in each city.
SELECT b.Branch_City, 
       MAX(l.Balance) AS Max_Loan, 
       MIN(l.Balance) AS Min_Loan 
FROM Loan l 
JOIN Branch b ON l.Branch_ID = b.Branch_ID 
GROUP BY b.Branch_City;

-- 5. Display the average amount deposited in each branch for each city.
SELECT b.Branch_City, 
       b.Branch_ID, 
       AVG(d.Balance) AS Avg_Deposit 
FROM Depositor d 
JOIN Branch b ON d.Branch_ID = b.Branch_ID 
GROUP BY b.Branch_City, b.Branch_ID;

-- 6. Display the maximum loan amount in each branch where the balance is more than 25000.
SELECT Branch_ID, MAX(Balance) AS Max_Loan 
FROM Loan 
WHERE Balance > 25000 
GROUP BY Branch_ID;

-- 7. Display the total number of accounts present in each city.
SELECT b.Branch_City, COUNT(a.Account_No) AS Total_Accounts 
FROM Account a 
JOIN Branch b ON a.Branch_ID = b.Branch_ID 
GROUP BY b.Branch_City;

-- 8. Display all customer details in ascending order of branch ID.
SELECT * 
FROM Account 
ORDER BY Branch_ID ASC;

-- 9. Update the balance to 26000 where Account_No = 'AE1003996'.
UPDATE Loan 
SET Balance = 26000 
WHERE Account_No = 'AE1003996';

-- 10. Display customer names with their branch name.
SELECT a.Cust_Name, b.Branch_Name 
FROM Account a 
JOIN Branch b ON a.Branch_ID = b.Branch_ID;

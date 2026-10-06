-- =========================================
-- CREATE TABLES
-- =========================================

CREATE TABLE Branch (
    Branch_ID VARCHAR(15),
    Branch_Name VARCHAR(15),
    Branch_City VARCHAR(15),
    PRIMARY KEY (Branch_ID)
);

CREATE TABLE Account (
    Account_No VARCHAR(15),
    Cust_Name VARCHAR(15),
    Branch_ID VARCHAR(15),
    PRIMARY KEY (Account_No),
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE TABLE Depositor (
    Account_No VARCHAR(15),
    Branch_ID VARCHAR(15),
    Balance NUMBER,
    FOREIGN KEY (Account_No) REFERENCES Account(Account_No),
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE TABLE Loan (
    Account_No VARCHAR(15),
    Branch_ID VARCHAR(15),
    Balance NUMBER,
    FOREIGN KEY (Account_No) REFERENCES Account(Account_No),
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);


-- =========================================
-- INSERT INTO BRANCH
-- =========================================

INSERT INTO Branch
VALUES ('SB001','Malleshwaram','Bangalore');

INSERT INTO Branch
VALUES ('SB002','MG Road','Bangalroe');

INSERT INTO Branch
VALUES ('SB003','MG Road','Mysore');

INSERT INTO Branch
VALUES ('SB004','Jainagar','Mysore');


-- =========================================
-- INSERT INTO ACCOUNT
-- =========================================

INSERT INTO Account
VALUES ('AE0012856','Reena','SB002');

INSERT INTO Account
VALUES ('AE1185698','Akhil','SB001');

INSERT INTO Account
VALUES ('AE1203996','Daniel','SB004');

INSERT INTO Account
VALUES ('AE1225889','Roy','SB002');

INSERT INTO Account
VALUES ('AE8532166','Sowparnika','SB003');

INSERT INTO Account
VALUES ('AE8552266','Anil','SB003');

INSERT INTO Account
VALUES ('AE1003996','Saathwik','SB004');

INSERT INTO Account
VALUES ('AE1100996','Swarna','SB002');


-- =========================================
-- INSERT INTO DEPOSITOR
-- =========================================

INSERT INTO Depositor
VALUES ('AE0012856','SB002',12000);

INSERT INTO Depositor
VALUES ('AE1203996','SB004',58900);

INSERT INTO Depositor
VALUES ('AE8532166','SB003',40000);

INSERT INTO Depositor
VALUES ('AE1225889','SB002',150000);


-- =========================================
-- INSERT INTO LOAN
-- =========================================

INSERT INTO Loan
VALUES ('AE1185698','SB001',102000);

INSERT INTO Loan
VALUES ('AE8552266','SB003',40000);

INSERT INTO Loan
VALUES ('AE1003996','SB004',15000);

INSERT INTO Loan
VALUES ('AE1100996','SB002',100000);


-- =========================================
-- 1. TOTAL NUMBER OF ACCOUNTS IN EACH BRANCH
-- =========================================

SELECT Account.Branch_ID,
       COUNT(Account.Branch_ID) AS no_of_acc
FROM Account, Branch
WHERE Account.Branch_ID = Branch.Branch_ID
GROUP BY Account.Branch_ID;


-- =========================================
-- 2. TOTAL LOAN AMOUNT IN EACH BRANCH
-- =========================================

SELECT Branch_ID,
       SUM(Balance) AS t_loan_amt
FROM Loan
GROUP BY Branch_ID;


-- =========================================
-- 3. TOTAL DEPOSITED AMOUNT IN DESCENDING ORDER
-- =========================================

SELECT Branch_ID,
       SUM(Balance)
FROM Depositor
GROUP BY Branch_ID
ORDER BY SUM(Balance) DESC;


-- =========================================
-- 4. MAX AND MIN LOAN AMOUNT IN EACH CITY
-- =========================================

SELECT Branch_City,
       MAX(Balance),
       MIN(Balance)
FROM Branch, Loan
WHERE Branch.Branch_ID = Loan.Branch_ID
GROUP BY Branch_City;


-- =========================================
-- 5. AVERAGE DEPOSITED AMOUNT IN EACH BRANCH
--    AND EACH CITY
-- =========================================

SELECT Depositor.Branch_ID,
       Branch_City,
       AVG(Balance)
FROM Depositor, Branch
WHERE Depositor.Branch_ID = Branch.Branch_ID
GROUP BY Depositor.Branch_ID, Branch_City;


-- =========================================
-- 6. MAXIMUM LOAN AMOUNT IN EACH BRANCH
--    WHERE BALANCE > 25000
-- =========================================

SELECT Branch_ID,
       MAX(Balance)
FROM Loan
GROUP BY Branch_ID
HAVING MAX(Balance) > 25000;


-- =========================================
-- 7. TOTAL NUMBER OF ACCOUNTS IN EACH CITY
-- =========================================

SELECT Branch_City,
       COUNT(Branch_City) AS no_of_acc
FROM Account, Branch
WHERE Account.Branch_ID = Branch.Branch_ID
GROUP BY Branch_City;


-- =========================================
-- 8. CUSTOMER DETAILS IN ASCENDING ORDER
--    OF BRANCH ID
-- =========================================

SELECT *
FROM Account
ORDER BY Branch_ID;


-- =========================================
-- 9. UPDATE BALANCE TO 26000
-- =========================================

UPDATE Loan
SET Balance = 26000
WHERE Account_No = 'AE1003996';

SELECT * FROM Loan;


-- =========================================
-- 10. CUSTOMER NAMES WITH BRANCH NAME
-- =========================================

SELECT DISTINCT Cust_Name,
                Branch_Name
FROM Account, Branch
WHERE Account.Branch_ID = Branch.Branch_ID;


-- =========================================
-- COMMIT
-- =========================================

COMMIT;

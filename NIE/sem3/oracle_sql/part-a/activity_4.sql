CREATE TABLE Equipment_Details (
    No NUMBER PRIMARY KEY,
    Item_Name VARCHAR2(30),
    Cost_Per_Item NUMBER(10, 2),
    Quantity NUMBER,
    Date_of_Purchase DATE,
    Warranty NUMBER,
    Operational NUMBER
);

INSERT INTO Equipment_Details VALUES (1, 'Computer', 30000, 9, TO_DATE('21/05/2007', 'DD/MM/YYYY'), 2, 7);
INSERT INTO Equipment_Details VALUES (2, 'Printer', 5000, 3, TO_DATE('21/05/2006', 'DD/MM/YYYY'), 4, 2);
INSERT INTO Equipment_Details VALUES (3, 'Scanner', 8000, 1, TO_DATE('29/08/2008', 'DD/MM/YYYY'), 3, 1);
INSERT INTO Equipment_Details VALUES (4, 'Camera', 7000, 2, TO_DATE('13/06/2005', 'DD/MM/YYYY'), 1, 2);
INSERT INTO Equipment_Details VALUES (5, 'UPS', 15000, 5, TO_DATE('21/05/2008', 'DD/MM/YYYY'), 1, 4);
INSERT INTO Equipment_Details VALUES (6, 'Hub', 8000, 1, TO_DATE('31/10/2008', 'DD/MM/YYYY'), 2, 1);
INSERT INTO Equipment_Details VALUES (7, 'Plotter', 25000, 2, TO_DATE('11/01/2009', 'DD/MM/YYYY'), 2, 2);

COMMIT;

-- Activity 4 Queries
-- 1. To select the ItemName purchase before 31/10/07.
SELECT Item_Name 
FROM Equipment_Details 
WHERE Date_of_Purchase < TO_DATE('31/10/2007', 'DD/MM/YYYY');

-- 2. Extend the warranty of each item by 6 months.
UPDATE Equipment_Details 
SET Warranty = Warranty + 0.5;

-- 3. Display ItemName , Dateof purchase and number of months between purchase date and present date.
SELECT Item_Name, 
       Date_of_Purchase, 
       MONTHS_BETWEEN(SYSDATE, Date_of_Purchase) AS Months_Passed 
FROM Equipment_Details;

-- 4. To list the ItemName in ascending order of the date of purchase where quantity is more than 3.
SELECT Item_Name 
FROM Equipment_Details 
WHERE Quantity > 3 
ORDER BY Date_of_Purchase ASC;

-- 5. To count the number, average of costperitem of items purchased before 1/1/08.
SELECT COUNT(*) AS Total_Count, 
       AVG(Cost_Per_Item) AS Avg_Cost 
FROM Equipment_Details 
WHERE Date_of_Purchase < TO_DATE('01/01/2008', 'DD/MM/YYYY');

-- 6. To display the minimum warranty , maximum warranty period.
SELECT MIN(Warranty) AS Min_Warranty, 
       MAX(Warranty) AS Max_Warranty 
FROM Equipment_Details;

-- 7. To Display the day of the date , month , year of purchase in characters.
SELECT TO_CHAR(Date_of_Purchase, 'Day') AS Purchase_Day,
       TO_CHAR(Date_of_Purchase, 'Month') AS Purchase_Month,
       TO_CHAR(Date_of_Purchase, 'Year') AS Purchase_Year
FROM Equipment_Details;

-- 8. To round of the warranty period to month and year format.
SELECT Item_Name,
       ROUND(Date_of_Purchase, 'MONTH') AS Rounded_To_Month,
       ROUND(Date_of_Purchase, 'YEAR') AS Rounded_To_Year 
FROM Equipment_Details;

-- 9. To display the next Sunday from the date "07-JUN-96".
SELECT NEXT_DAY(TO_DATE('07-JUN-1996', 'DD-MON-YYYY'), 'SUNDAY') AS Next_Sunday 
FROM DUAL;

-- 10. To list the ItemName, which are within the warranty period till present date.
SELECT Item_Name 
FROM Equipment_Details 
WHERE ADD_MONTHS(Date_of_Purchase, Warranty * 12) >= SYSDATE;

-- Create Table
CREATE TABLE Equipment_details (
    no NUMBER PRIMARY KEY,
    Item_name VARCHAR2(10),
    cost_per_item NUMBER,
    quantity NUMBER,
    date_of_purchase DATE,
    warranty NUMBER,
    operational NUMBER
);

-- Insert Records
INSERT INTO equipment_details
VALUES (1, 'Computer', 30000, 9, '21-MAY-07', 2, 7);

INSERT INTO equipment_details
VALUES (2, 'Printer', 5000, 3, '21-MAY-06', 4, 2);

INSERT INTO equipment_details
VALUES (3, 'Scanner', 8000, 1, '29-AUG-08', 3, 1);

INSERT INTO equipment_details
VALUES (4, 'Camera', 7000, 2, '13-JUN-05', 1, 2);

INSERT INTO equipment_details
VALUES (5, 'UPS', 15000, 5, '21-MAY-08', 1, 4);

INSERT INTO equipment_details
VALUES (6, 'Hub', 8000, 1, '31-OCT-08', 2, 1);

INSERT INTO equipment_details
VALUES (7, 'Plotter', 25000, 2, '11-JAN-09', 2, 2);

commit;

-- Display All Records
SELECT * FROM equipment_details;


-- Q1: Select ItemName purchased before 31/10/07
SELECT item_name
FROM equipment_details
WHERE date_of_purchase < '31-OCT-07';


-- Q2: Extend warranty by 6 months
SELECT item_name,
       ADD_MONTHS(date_of_purchase, 6) AS Extended_warranty
FROM equipment_details;


-- Q3: Display ItemName, Date of Purchase and months between
-- purchase date and present date
SELECT item_name,
       date_of_purchase,
       MONTHS_BETWEEN(SYSDATE, date_of_purchase) AS months
FROM equipment_details;


-- Q4: ItemName in ascending order of purchase date
-- where quantity is more than 3
SELECT item_name
FROM equipment_details
WHERE quantity > 3
ORDER BY date_of_purchase ASC;


-- Q5: Count and average cost of items purchased before 1/1/08
SELECT COUNT(*) AS total_item,
       AVG(cost_per_item) AS average_cost
FROM equipment_details
WHERE date_of_purchase < TO_DATE('01-JAN-08', 'DD-MM-YY');


-- Q6: Minimum and maximum warranty
SELECT MIN(warranty) AS minimum_warranty,
       MAX(warranty) AS maximum_warranty
FROM equipment_details;


-- Q7: Display day, month and year of purchase in characters
SELECT item_name,
       TO_CHAR(date_of_purchase, 'day') AS day,
       TO_CHAR(date_of_purchase, 'month') AS month,
       TO_CHAR(date_of_purchase, 'year') AS year
FROM equipment_details;


-- Q8: Round purchase date to month and year
SELECT item_name,
       ROUND(date_of_purchase, 'month') AS round_month,
       ROUND(date_of_purchase, 'year') AS round_year
FROM equipment_details;


-- Q9: Display next Sunday from 07-JUN-96
SELECT NEXT_DAY(
    TO_DATE('07-JUN-96', 'DD-MM-YY'),
    'sunday'
)
FROM dual;


-- Q10: List items within warranty period till present date
SELECT item_name
FROM equipment_details
WHERE ADD_MONTHS(date_of_purchase, warranty * 12) >= SYSDATE;
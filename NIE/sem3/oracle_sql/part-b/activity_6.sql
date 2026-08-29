-- Table Setup & Insertion
CREATE TABLE Physics (
    Regno VARCHAR2(10) PRIMARY KEY,
    Name VARCHAR2(30),
    Year VARCHAR2(15),
    Combination VARCHAR2(10)
);

CREATE TABLE Computer_Science (
    Regno VARCHAR2(10) PRIMARY KEY,
    Name VARCHAR2(30),
    Year VARCHAR2(15),
    Combination VARCHAR2(10)
);

INSERT INTO Physics VALUES ('AJ00325', 'Ashwin', 'First', 'PCM');
INSERT INTO Physics VALUES ('AJ00225', 'Swaroop', 'Second', 'PMCs');
INSERT INTO Physics VALUES ('AJ00385', 'Sarika', 'Third', 'PME');
INSERT INTO Physics VALUES ('AJ00388', 'Hamsa', 'First', 'PMCs');

INSERT INTO Computer_Science VALUES ('AJ00225', 'Swaroop', 'Second', 'PMCs');
INSERT INTO Computer_Science VALUES ('AJ00296', 'Tejas', 'Second', 'BCA');
INSERT INTO Computer_Science VALUES ('AJ00112', 'Geetha', 'First', 'BCA');
INSERT INTO Computer_Science VALUES ('AJ00388', 'Hamsa', 'First', 'PMCs');

COMMIT;

-- 1. Select all students from Physics and Computer Science.
SELECT * FROM Physics
UNION
SELECT * FROM Computer_Science;

-- 2. Select student common in Physics and Computer Science.
SELECT * FROM Physics
INTERSECT
SELECT * FROM Computer_Science;

-- 3. Display all student details who are studying in the second year.
SELECT * FROM Physics WHERE Year = 'Second'
UNION
SELECT * FROM Computer_Science WHERE Year = 'Second';

-- 4. Display students who are studying both Physics and Computer Science in the second year.
SELECT * FROM Physics WHERE Year = 'Second'
INTERSECT
SELECT * FROM Computer_Science WHERE Year = 'Second';

-- 5. Display the students studying only Physics.
SELECT * FROM Physics
MINUS
SELECT * FROM Computer_Science;

-- 6. Display the students studying only Computer Science.
SELECT * FROM Computer_Science
MINUS
SELECT * FROM Physics;

-- 7. Select all students having PMCs combination.
SELECT * FROM Physics WHERE Combination = 'PMCs'
UNION
SELECT * FROM Computer_Science WHERE Combination = 'PMCs';

-- 8. Select all students having BCA combination.
SELECT * FROM Physics WHERE Combination = 'BCA'
UNION
SELECT * FROM Computer_Science WHERE Combination = 'BCA';

-- 9. Select all students studying in the third year.
SELECT * FROM Physics WHERE Year = 'Third'
UNION
SELECT * FROM Computer_Science WHERE Year = 'Third';

-- 10. Rename table Computer Science to CS.
RENAME Computer_Science TO CS;

commit;

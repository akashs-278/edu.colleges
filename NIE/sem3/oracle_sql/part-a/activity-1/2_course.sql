CREATE TABLE Course (
    Course_Name VARCHAR2(50),
    Course_Number VARCHAR2(10) PRIMARY KEY,
    Credit_Hours NUMBER(2),
    Department VARCHAR2(20)
);

INSERT INTO Course VALUES('Introduction to Computer Science', 'CS1310', 4, 'CS');
INSERT INTO Course VALUES('Data Structure', 'CS3320', 4, 'CS');
INSERT INTO Course VALUES('Discrete Mathematics', 'MATH2410', 3, 'MATH');
INSERT INTO Course VALUES('Database Management System', 'CS3380', 3, 'CS');

SELECT * FROM Course;

commit;
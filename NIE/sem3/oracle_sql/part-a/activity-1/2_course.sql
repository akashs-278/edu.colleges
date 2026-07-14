CREATE TABLE Course (
    Course_Name VARCHAR2(50),
    Course_Number VARCHAR2(10) PRIMARY KEY,
    Credit_Hours NUMBER(2),
    Department VARCHAR2(50)
);

insert into course values('Introduction to Computer Science','CS1310',4,'CS');
insert into course values('Data Structure','CS3320',4,'CS');
insert into course values('Discrete Mathematics','MATH2410',3,'MATH');
insert into course values('Database Management System ','CS3380',3,'CS');

-- To format the output
COLUMN COURSE_NAME FORMAT A30;
COLUMN COURSE_NUMBER FORMAT A15;
COLUMN DEPARTMENT FORMAT A20;

SELECT * FROM COURSE;
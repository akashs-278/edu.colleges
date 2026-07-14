CREATE TABLE Student (
    Name VARCHAR2(20),
    Reg_No NUMBER(5) PRIMARY KEY,
    Class NUMBER(2),
    Major VARCHAR2(20)
);

INSERT INTO Student VALUES('Smith', 17, 1, 'CS');
INSERT INTO Student VALUES('Brown', 18, 2, 'CS');
INSERT INTO Student VALUES('John', 8, 1, 'CS');

SELECT * FROM Student;
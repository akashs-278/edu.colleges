
CREATE TABLE section (
    section_identifier NUMBER(10) PRIMARY KEY,
    course_number      VARCHAR2(10),
    years               NUMBER,
    instructor         VARCHAR2(20),
    FOREIGN KEY (Course_Number) REFERENCES course(Course_Number)
);


INSERT INTO section VALUES (85,  'MATH2410', 98, 'King');
INSERT INTO section VALUES (92,  'CS1310',   98, 'Andreson');
INSERT INTO section VALUES (102, 'CS3320',   99, 'Knuth');
INSERT INTO section VALUES (112, 'MATH2410', 99, 'Chang');
INSERT INTO section VALUES (119, 'CS1310',   99, 'Andreson');
INSERT INTO section VALUES (135, 'CS3380',   99, 'Stone');

COMMIT;

SELECT * FROM section;

-- drop table section;
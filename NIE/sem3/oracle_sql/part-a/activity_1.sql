-- Table 1
create table Student (
    Name varchar2(20),
    Reg_No number(5) primary key,
    Class number(2),
    Major varchar2(20)
);

insert into Student values('Smith', 17, 1, 'CS');
insert into Student values('Brown', 8, 2, 'CS');

select * from Student;

commit;



-- Table 2
create table Course (
    Course_Name varchar2(50),
    Course_Number varchar2(10) primary key,
    Credit_Hours number(2),
    Department varchar2(20)
);

insert into Course values('Introduction to Computer Science', 'CS1310', 4, 'CS');
insert into Course values('Data Structure', 'CS3320', 4, 'CS');
insert into Course values('Discrete Mathematics', 'MATH2410', 3, 'MATH');
insert into Course values('Database Management System', 'CS3380', 3, 'CS');

select * from Course;

commit;



-- Table 3
create table section (
    section_identifier number(10) primary key,
    course_number varchar2(10),
    years number,
    instructor varchar2(20),
    foreign key (Course_Number) references Course(Course_Number)
);

insert into section values (85, 'MATH2410', 98, 'King');
insert into section values (92, 'CS1310', 98, 'Andreson');
insert into section values (102, 'CS3320', 99, 'Knuth');
insert into section values (112, 'MATH2410', 99, 'Chang');
insert into section values (119, 'CS1310', 99, 'Andreson');
insert into section values (135, 'CS3380', 99, 'Stone');

select * from section;

commit;



-- Table 4
create table grade_report (
    Reg_No number(10),
    Section_Identifier number(10),
    Grade varchar2(2),
    foreign key (Reg_No) references Student(Reg_No),
    foreign key (Section_Identifier) references section(Section_Identifier)
);

insert into grade_report values (17, 112, 'B');
insert into grade_report values (17, 119, 'C');
insert into grade_report values (8, 85, 'A');
insert into grade_report values (8, 92, 'A');
insert into grade_report values (8, 102, 'B');
insert into grade_report values (8, 135, 'A');

select * from grade_report;

commit;



-- Queries
alter table section add section varchar2(20);
update section set section = 'A';
-- or update individually
-- update section set section = 'A' where section_identifier = 85;
-- update section set section = 'B' where section_identifier = 92;
-- update section set section = 'C' where section_identifier = 102;
-- update section set section = 'D' where section_identifier = 112;
-- update section set section = 'E' where section_identifier = 119;
-- update section set section = 'F' where section_identifier = 135;



delete Grade_Report where RegNo=(select RegNo from Student where Name='Brown');


drop table Section cascade constraints;
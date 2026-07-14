create table section(Section_Identifier number(10) primary key, Course_Number varchar2(10), Year number, Instructor varchar2(20));


insert into section values(85 ,'MATH2410', 98, 'King');
insert into section values(92 ,'CS1310', 98, 'Andreson');
insert into section values(102, 'CS3320', 99, 'Knuth');
insert into section values(112, 'MATH2410', 99, 'Chang');
insert into section values(119, 'CS1310', 99, 'Andreson');
insert into section values(135, 'CS3380', 99, 'Stone');


select * from section;
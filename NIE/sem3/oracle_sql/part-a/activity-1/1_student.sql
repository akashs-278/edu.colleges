create table student(Name varchar2(20), Reg_No number(5) primary key, Class number(2), Major varchar(5));
insert into student values('Smith', 17, 1, 'CS');
insert into student values('Brown', 18, 2, 'CS');
select * from student;
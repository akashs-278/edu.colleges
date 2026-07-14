create table grade_report(Reg_no number(10), Section_Identifier number(10), Grade varchar2(2));

insert into grade_report values(17, 112, 'B');
insert into grade_report values(17, 119, 'C');
insert into grade_report values(8, 85, 'A');
insert into grade_report values(8, 92, 'A');
insert into grade_report values(8, 102, 'B');
insert into grade_report values(8, 135, 'A');


select * from grade_report;
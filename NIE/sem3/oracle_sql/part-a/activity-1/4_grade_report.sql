create table grade_report(
    Reg_No number(10),
    Section_Identifier number(10),
    Grade varchar2(2),
    foreign key(Reg_No) references student(Reg_No),
    foreign key(Section_Identifier) references section(Section_Identifier)
);

insert into grade_report values(17, 112, 'B');
insert into grade_report values(17, 119, 'C');
insert into grade_report values(8, 85, 'A');
insert into grade_report values(8, 92, 'A');
insert into grade_report values(8, 102, 'B');
insert into grade_report values(8, 135, 'A');


select * from grade_report;

commit;
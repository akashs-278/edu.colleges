create table student (
   name   varchar2(20),
   reg_no number(5) primary key,
   class  number(2),
   major  varchar2(20)
);

insert into student values
   ( 'Smith',
     17,
     1,
     'CS' );
insert into student values
   ( 'Brown',
     8,
     2,
     'CS' );


select *
  from student;

commit;



create table course (
   course_name   varchar2(50),
   course_number varchar2(10) primary key,
   credit_hours  number(2),
   department    varchar2(20)
);

insert into course values
   ( 'Introduction to Computer Science',
     'CS1310',
     4,
     'CS' );
insert into course values
   ( 'Data Structure',
     'CS3320',
     4,
     'CS' );
insert into course values
   ( 'Discrete Mathematics',
     'MATH2410',
     3,
     'MATH' );
insert into course values
   ( 'Database Management System',
     'CS3380',
     3,
     'CS' );

select *
  from course;

commit;



create table section (
   section_identifier number(10) primary key,
   course_number      varchar2(10),
   years              number,
   instructor         varchar2(20),
   foreign key ( course_number )
      references course ( course_number )
);


insert into section values
   ( 85,
     'MATH2410',
     98,
     'King' );
insert into section values
   ( 92,
     'CS1310',
     98,
     'Andreson' );
insert into section values
   ( 102,
     'CS3320',
     99,
     'Knuth' );
insert into section values
   ( 112,
     'MATH2410',
     99,
     'Chang' );
insert into section values
   ( 119,
     'CS1310',
     99,
     'Andreson' );
insert into section values
   ( 135,
     'CS3380',
     99,
     'Stone' );

commit;

select *
  from section;

-- drop table section;

create table grade_report (
   reg_no             number(10),
   section_identifier number(10),
   grade              varchar2(2),
   foreign key ( reg_no )
      references student ( reg_no ),
   foreign key ( section_identifier )
      references section ( section_identifier )
);

insert into grade_report values
   ( 17,
     112,
     'B' );
insert into grade_report values
   ( 17,
     119,
     'C' );
insert into grade_report values
   ( 8,
     85,
     'A' );
insert into grade_report values
   ( 8,
     92,
     'A' );
insert into grade_report values
   ( 8,
     102,
     'B' );
insert into grade_report values
   ( 8,
     135,
     'A' );


select *
  from grade_report;

commit;

-- Queries
-- 3 : Alter table section add new field section and update the records
alter table section add section char(1);

update section
   set
   section = 'A';
-- update SECTION set SECTION='A' where SECTION_IDENTIFIER=85;

select *
  from section;

select *
  from grade_report;

-- 4 : Delete brown’s grade report.
delete grade_report
 where reg_no = (
   select reg_no
     from student
    where student.name = 'Brown'
);


-- 5 : Drop the table section.
drop table section cascade constraints;
commit;
create table employee (
   empid     number primary key,
   firstname varchar2(20),
   lastname  varchar2(20),
   hire_date date,
   address   varchar2(50),
   city      varchar2(20)
);


insert into employee values
   ( 1001,
     'George',
     'Smith',
     '11-may-06',
     '83 First Street',
     'Paris' );
insert into employee values
   ( 1002,
     'Mary',
     'Jones',
     '25-feb-08',
     '842 Vine Ave',
     'Losantiville' );
insert into employee values
   ( 1012,
     'Sam',
     'Tones',
     '12-sep-05',
     '33 Elm St.',
     'Paris' );
insert into employee values
   ( 1015,
     'Peter',
     'Thompson',
     '19-dec-06',
     '11 Red Road',
     'Paris' );
insert into employee values
   ( 1016,
     'Sarath',
     'Sharma',
     '22-aug-07',
     '440 MG Road',
     'New Delhi' );
insert into employee values
   ( 1020,
     'Monika',
     'Gupta',
     '07-jun-08',
     '9 Bandra',
     'Mumbai' );

commit;

select *
  from employee;

create table empsalary (
   empid       number,
   salary      number,
   benefits    number,
   designation varchar2(50),
   foreign key ( empid )
      references employee ( empid )
);

-- truncate table empsalary;
insert into empsalary values
   ( 1001,
     10000,
     3000,
     'Manager' );
insert into empsalary values
   ( 1002,
     8000,
     1200,
     'Salesman' );
insert into empsalary values
   ( 1012,
     20000,
     5000,
     'Director' );
insert into empsalary values
   ( 1015,
     6500,
     1300,
     'Clerk' );
insert into empsalary values
   ( 1016,
     6000,
     1000,
     'Clerk' );
insert into empsalary values
   ( 1020,
     8000,
     1200,
     'Salesman' );
select *
  from empsalary;
commit;

-- Queries
-- 1
select firstname,
       lastname,
       address,
       city
  from employee
 where city = 'Paris';


-- 2
select *
  from employee
 order by firstname desc;


-- 3
select e.firstname,
       s.designation
  from employee e,
       empsalary s
 where e.empid = s.empid
   and s.designation = 'Salesman';


-- 4
select e.firstname,
       e.lastname,
       ( s.salary + s.benefits ) as total_salary
  from employee e,
       empsalary s
 where e.empid = s.empid;

-- 5
select count(distinct designation)
  from empsalary;


-- 6
select *
  from employee
 where length(firstname) = 6;


-- 7
alter table employee add phone_number number;
update employee
   set
   phone_number = '9876543210';

select *
  from employee;
-- 8
select firstname
  from employee
 where hire_date between '17-JUN-2007' and '14-JUN-2008';

-- 9
select e.firstname,
       s.salary,
       s.benefits,
       s.salary * 0.50 as hra,
       s.salary * 0.30 as da,
       s.salary * 0.12 as pf,
       ( s.salary + s.benefits + s.salary * 0.50 + s.salary * 0.30 + s.salary * 0.12 ) as gross_salary
  from employee e,
       empsalary s
 where e.empid = s.empid
 order by gross_salary desc;

commit;
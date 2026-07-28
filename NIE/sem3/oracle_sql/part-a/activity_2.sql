create table employee (
    empid number(4) primary key,
    firstname varchar2(20),
    lastname varchar2(20),
    hire_date date,
    address varchar2(50),
    city varchar2(30)
);
insert into employee values(1001, 'George', 'Smith', to_date('11-may-06', 'dd-mon-rr'), '83 First Street', 'Paris');
insert into employee values(1002, 'Mary', 'Jones', to_date('25-feb-08', 'dd-mon-rr'), '842 Vine Ave', 'Losantiville');
insert into employee values(1012, 'Sam', 'Tones', to_date('12-sep-05', 'dd-mon-rr'), '33 Elm St.', 'Paris');
insert into employee values(1015, 'Peter', 'Thompson', to_date('19-dec-06', 'dd-mon-rr'), '11 Red Road', 'Paris');
insert into employee values(1016, 'Sarath', 'Sharma', to_date('22-aug-07', 'dd-mon-rr'), '440 MG Road', 'New Delhi');
insert into employee values(1020, 'Monika', 'Gupta', to_date('07-jun-08', 'dd-mon-rr'), '9 Bandra', 'Mumbai');


select * from employee;



create table empsalary (
    empid number(4),
    salary number(10),
    benefits number(10),
    designation varchar2(20),
    foreign key(empid) references employee(empid)
);
insert into empsalary values(1001, 10000, 3000, 'Manager');
insert into empsalary values(1002, 8000, 1200, 'Salesman');
insert into empsalary values(1012, 20000, 5000, 'Director');
insert into empsalary values(1015, 6500, 1300, 'Clerk');
insert into empsalary values(1016, 6000, 1000, 'Clerk');
insert into empsalary values(1020, 8000, 1200, 'Salesman');

select * from empsalary;





-- Queries
-- 1
select firstname, lastname, address, city from employee where city = 'Paris';

-- 2
select * from employee order by firstname desc;

-- 3
select employee.firstname,empsalary.salary from employee, empsalary where employee.empid = empsalary.empid and empsalary.designation = 'Salesman';

-- 4


-- 5
select distinct designation from empsalary;

-- 6
select firstname from employee where length(firstname) = 6;

-- 7
alter table employee add Phone_Number number(10);
update employee set PHONE_NUMBER = 1234567890;

-- 8


-- 9
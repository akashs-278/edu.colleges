-- Table 1
create table physics (
   regno       varchar2(10) primary key,
   name        varchar2(10),
   year        varchar2(10),
   combination varchar2(10)
);

insert into physics values
   ( 'AJ00325',
     'Ashwin',
     'First',
     'PCM' );
insert into physics values
   ( 'AJ00225',
     'Swaroop',
     'Second',
     'PMCs' );
insert into physics values
   ( 'AJ00385',
     'Sarika',
     'Third',
     'PME' );
insert into physics values
   ( 'AJ00388',
     'Hamsa',
     'First',
     'PMCs' );

select *
  from physics;
-- Table 2
create table computer_science (
   regno       varchar2(10) primary key,
   name        varchar2(10),
   year        varchar2(10),
   combination varchar2(10)
);

insert into computer_science values
   ( 'AJ00225',
     'Swaroop',
     'Second',
     'PMCs' );
insert into computer_science values
   ( 'AJ00296',
     'Tejas',
     'Second',
     'BCA' );
insert into computer_science values
   ( 'AJ00112',
     'Geetha',
     'First',
     'BCA' );
insert into computer_science values
   ( 'AJ00388',
     'Hamsa',
     'First',
     'PMCs' );


-- Quereies
select *
  from physics;
select *
  from computer_science;
drop table physics;
drop table computer_science;
-- 1 : Select all students from Physics and Computer Science
select *
  from physics
union
select *
  from computer_science;

-- 2 
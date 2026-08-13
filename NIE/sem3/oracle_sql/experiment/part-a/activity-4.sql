create table equipment_details (
   no               number,
   item_name        varchar2(50),
   cost_per_item    number,
   quantity         number,
   date_of_purchase date,
   warranty         number,
   operational      number
);

insert into equipment_details values
   ( 1,
     'Computer',
     30000,
     9,
     to_date('21/05/2007','dd/mm/yyyy'),
     2,
     7 );

insert into equipment_details values
   ( 2,
     'Printer',
     5000,
     3,
     to_date('21/05/2006','dd/mm/yyyy'),
     4,
     2 );

insert into equipment_details values
   ( 3,
     'Scanner',
     8000,
     1,
     to_date('29/08/2008','dd/mm/yyyy'),
     3,
     1 );

insert into equipment_details values
   ( 4,
     'Camera',
     7000,
     2,
     to_date('13/06/2005','dd/mm/yyyy'),
     1,
     2 );

insert into equipment_details values
   ( 5,
     'UPS',
     15000,
     5,
     to_date('21/05/2008','dd/mm/yyyy'),
     1,
     4 );

insert into equipment_details values
   ( 6,
     'Hub',
     8000,
     1,
     to_date('31/10/2008','dd/mm/yyyy'),
     2,
     1 );

insert into equipment_details values
   ( 7,
     'Plotter',
     25000,
     2,
     to_date('11/01/2009','dd/mm/yyyy'),
     2,
     2 );

select *
  from equipment_details;
drop table train_details;
create table train_details (
   train_no    varchar2(10) primary key,
   train_name  varchar2(50),
   start_place varchar2(50),
   destination varchar2(50)
);

insert into train_details values
   ( 'RJD16',
     'Rajdhani Express',
     'Bangalore',
     'Mumbai' );
insert into train_details values
   ( 'UDE04',
     'Udhyan Express',
     'Chennai',
     'Hyderabad' );
insert into train_details values
   ( 'KKE55',
     'Karnataka Express',
     'Bangalore',
     'Chennai' );
insert into train_details values
   ( 'CSE3',
     'Shivaji Express',
     'Coimbatore',
     'Bangalore' );
insert into train_details values
   ( 'JNS8',
     'Janashatabdi',
     'Bangalore',
     'Salem' );

select *
  from train_details;

commit;





create table availability (
   train_no    varchar2(10),
   train_name  varchar2(50),
   start_place varchar2(50),
   destination varchar2(50),
   no_of_seats number(5),
   foreign key ( train_no )
      references train_details ( train_no )
);

insert into availability values
   ( 'RJD16',
     'Rajdhani Express',
     'Bangalore',
     'Mumbai',
     15 );

insert into availability values
   ( 'UDE04',
     'Udhyan Express',
     'Chennai',
     'Hyderabad',
     22 );

insert into availability values
   ( 'KKE55',
     'Karnataka Express',
     'Bangalore',
     'Chennai',
     15 );

insert into availability values
   ( 'CSE3',
     'Shivaji Express',
     'Coimbatore',
     'Bangalore',
     8 );

insert into availability values
   ( 'JNS8',
     'Janashatabdi',
     'Bangalore',
     'Salem',
     18 );


select *
  from availability;

commit;
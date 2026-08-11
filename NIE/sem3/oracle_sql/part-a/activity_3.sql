drop table books;
create table books (
   book_id     varchar(10) primary key,
   book_name   varchar(100),
   author_name varchar(100),
   publishers  varchar(100),
   price       decimal(10,2),
   type        varchar(50),
   quantity    int
);

insert into books values
   ( 'C0001',
     'The Klone and I',
     'Lata Kappor',
     'EPP',
     355,
     'Novel',
     5 );
insert into books values
   ( 'F0001',
     'The Tears',
     'William Hopkins',
     'First Publ',
     650,
     'Fiction',
     20 );
insert into books values
   ( 'T0001',
     'My First C++',
     'Brain '
     || chr(38)
     || ' Brooke',
     'First Publ',
     350,
     'Text',
     10 );
insert into books values
   ( 'T0002',
     'C++ Brainwork''s',
     'A.W. Rossaine',
     'TDH',
     350,
     'Text',
     15 );
insert into books values
   ( 'F0002',
     'Thunderbolts',
     'Ana Roberts',
     'First Publ',
     750,
     'Fiction',
     50 );

select *
  from books;

commit;

create table issued (
   book_id         varchar(10),
   quantity_issued int,
   foreign key ( book_id )
      references books ( book_id )
);

insert into issued values
   ( 'T0001',
     4 );
insert into issued values
   ( 'C0001',
     5 );
insert into issued values
   ( 'F0001',
     2 );
insert into issued values
   ( 'T0002',
     5 );
insert into issued values
   ( 'F0002',
     8 );

select *
  from issued;

commit;

-- Queries
-- 1
select book_name,
       author_name,
       price
  from books
 where publishers = 'First Publ';


-- 2
select book_id,
       book_name,
       price,
       publishers
  from books
 where quantity > 8
   and price < 500;


-- 3
select book_id,
       book_name,
       author_name
  from books
 where publishers <> 'EPP'
   and price between 300 and 700;


-- 4
select book_id,
       book_name,
       author_name,
       publishers,
       quantity,
       price + ( price * 0.04 ) as vat,
       price + ( price * 0.04 ) as total
  from books;

select book_id,
       book_name,
       publishers,
       price,
       quantity,
       price * quantity * 0.04 as vat,
       price * quantity + ( price * quantity * 0.04 ) as total
  from books;

-- 5
select *
  from books
 where book_id in ( 'C0001',
                    'F0001',
                    'T0001',
                    'F0002' );


-- 6
select *
  from books
 where type not in ( 'Novel',
                     'Fiction' );


-- 7
select *
  from books
 where author_name like 'A%';

select *
  from books;
-- 8
select *
  from books
 where author_name like 'T%S';
commit;

-- 9
select b.book_id,
       b.book_name,
       b.author_name,
       i.quantity_issued
  from books b,
       issued i
 where b.book_id = i.book_id;


-- 10
select book_name,
       author_name,
       price
  from books
 order by book_name asc,
          price desc;
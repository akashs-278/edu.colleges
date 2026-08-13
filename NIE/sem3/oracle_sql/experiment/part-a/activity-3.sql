drop table books;
truncate table books;
create table books (
   book_id     varchar2(5) primary key,
   book_name   varchar2(25),
   author_name varchar2(25),
   publishers  varchar2(20),
   price       number(5),
   type        varchar2(10),
   quantity    number(3)
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
     'Brain & Brooke',
     'First Publ',
     350,
     'Text',
     10 );
insert into books values
   ( 'T0002',
     q'[C++ Brainwork's]',
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

create table issued (
   book_id         varchar2(10),
   quantity_issued number
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
-- SELECT Book_id,
--        Book_name,
--        Publisher,
--        Price,
--        Quantity,
--        (Price * Quantity * 0.04) AS VAT,
--        (Price * Quantity) + (Price * Quantity * 0.04) AS Total
-- FROM Book;

-- 5
-- SELECT *
-- FROM Book
-- WHERE Book_id IN ('C0001', 'F0001', 'T0002', 'F0002');

-- 6
select *
  from books
 where type not in ( 'Novel',
                     'Fiction' );
-- 7
-- SELECT *
-- FROM Book
-- WHERE Author_name LIKE 'A%';

-- 8
-- SELECT *
-- FROM Book
-- WHERE Author_name LIKE 'T%S';

-- 9
select books.book_id,
       books.book_name,
       books.author_name,
       issued.quantity_issued
  from books
 inner join issued
on books.book_id = issued.book_id;

-- 10
-- SELECT Book_name,
--        Author_name,
--        Price
-- FROM Book
-- ORDER BY Book_name ASC, Price DESC;
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
SELECT Book_name, Author_name, Price
FROM Books
WHERE Publishers = 'First Publ';


-- 2
SELECT Book_id, Book_name, Price, Publishers
FROM Books
WHERE Quantity > 8 AND Price < 500;


-- 3
SELECT Book_id, Book_name, Author_name
FROM Books
WHERE Publishers <> 'EPP'
AND Price BETWEEN 300 AND 700;


-- 4
SELECT Book_id, Book_name, Author_name, Publishers, Quantity,
       Price + (Price * 0.04) AS VAT,
       Price + (Price * 0.04) AS Total
FROM Books;


-- 5
SELECT *
FROM Books
WHERE Book_id IN ('C0001', 'F0001', 'T0001', 'F0002');


-- 6
SELECT *
FROM Books
WHERE Type NOT IN ('Novel', 'Fiction');


-- 7
SELECT *
FROM Books
WHERE Author_name LIKE 'A%';

select * from books;
-- 8
SELECT *
FROM Books
WHERE Author_name LIKE 'T%S';
commit;

-- 9
SELECT B.Book_id, B.Book_name, B.Author_name, I.Quantity_Issued
FROM Books B, Issued I
WHERE B.Book_id = I.Book_id;


-- 10
SELECT Book_name, Author_name, Price
FROM Books
ORDER BY Book_name ASC, Price DESC;
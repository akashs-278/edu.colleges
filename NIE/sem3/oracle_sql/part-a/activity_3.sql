drop table books;
create table books (
    book_id varchar(10) primary key,
    book_name varchar(100),
    author_name varchar(100),
    publishers varchar(100),
    price decimal(10,2),
    type varchar(50),
    quantity int
);

insert into books values ('C0001', 'The Klone and I', 'Lata Kappor', 'EPP', 355, 'Novel', 5);
insert into books values ('F0001', 'The Tears', 'William Hopkins', 'First Publ', 650, 'Fiction', 20);
insert into books values ('T0001', 'My First C++', 'Brain & Brooke', 'First Publ', 350, 'Text', 10);
insert into books values ('T0002', 'C++ Brainwork''s', 'A.W. Rossaine', 'TDH', 350, 'Text', 15);
insert into books values ('F0002', 'Thunderbolts', 'Ana Roberts', 'First Publ', 750, 'Fiction', 50);

select * from books;

create table issued (
    book_id varchar(10),
    quantity_issued int,
    foreign key (book_id) references books(book_id)
);

insert into issued values ('T0001', 4);
insert into issued values ('C0001', 5);
insert into issued values ('F0001', 2);
insert into issued values ('T0002', 5);
insert into issued values ('F0002', 8);

select * from issued;



-- Queries
-- 1
select book_name, author_name , price from books where PUBLISHERS = 'First Publ';

-- 2
select book_id, book_name, publishers from books where quantity > 8 and price < 500;

-- 3


-- 4


-- 5


-- 6


-- 7


-- 8


-- 9


-- 10
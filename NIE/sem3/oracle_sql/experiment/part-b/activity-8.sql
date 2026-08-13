create table account (
    account_no varchar2(10) primary key,
    cust_name varchar2(30),
    branch_id varchar2(5)
);

insert into account values ('AE0012856', 'Reena', 'SB002');
insert into account values ('AE1185698', 'Akhil', 'SB001');
insert into account values ('AE1203996', 'Daniel', 'SB004');
insert into account values ('AE1225889', 'Roy', 'SB002');
insert into account values ('AE8532166', 'Sowparnika', 'SB003');
insert into account values ('AE8552266', 'Anil', 'SB003');
insert into account values ('AE1003996', 'Saathwik', 'SB004');
insert into account values ('AE1100996', 'Swarna', 'SB002');

create table branch (
    branch_id varchar2(5) primary key,
    branch_name varchar2(30),
    branch_city varchar2(30)
);

insert into branch values ('SB001', 'Malleshwaram', 'Bangalore');
insert into branch values ('SB002', 'MG Road', 'Bangalore');
insert into branch values ('SB003', 'MG Road', 'Mysore');
insert into branch values ('SB004', 'Jayanagar', 'Mysore');

create table depositor (
    account_no varchar2(10),
    branch_id varchar2(5),
    balance number,
    primary key (account_no),
    foreign key (account_no) references account(account_no),
    foreign key (branch_id) references branch(branch_id)
);

insert into depositor values ('AE0012856', 'SB002', 12000);
insert into depositor values ('AE1203996', 'SB004', 58900);
insert into depositor values ('AE8532166', 'SB003', 40000);
insert into depositor values ('AE1225889', 'SB002', 150000);

create table loan (
    account_no varchar2(10),
    branch_id varchar2(5),
    balance number,
    primary key (account_no),
    foreign key (account_no) references account(account_no),
    foreign key (branch_id) references branch(branch_id)
);

insert into loan values ('AE1185698', 'SB001', 102000);
insert into loan values ('AE8552266', 'SB003', 40000);
insert into loan values ('AE1003996', 'SB004', 15000);
insert into loan values ('AE1100996', 'SB002', 100000);

create table loan (
    account_no varchar2(10),
    branch_id varchar2(5),
    balance number,
    primary key (account_no),
    foreign key (account_no) references account(account_no),
    foreign key (branch_id) references branch(branch_id)
);

insert into loan values ('AE1185698', 'SB001', 102000);
insert into loan values ('AE8552266', 'SB003', 40000);
insert into loan values ('AE1003996', 'SB004', 15000);
insert into loan values ('AE1100996', 'SB002', 100000);

select * from account;
select * from branch;
select * from depositor;
select * from loan;


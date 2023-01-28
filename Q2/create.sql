create table salesman
(
    id int primary key,
    s_name varchar(20),
    city varchar(20),
    commission varchar(10)
);

create table customer 
(
    cust_id int primary key,
    c_name varchar(20),
    city varchar(20),
    grade int,
    id int references salesman(id) on delete cascade
);

create table orders 
(
    ord_no int,
    amt int,
    ord_date date,
    cust_id int references customer(cust_id) on delete cascade,
    id int references salesman(id) on delete cascade  
);
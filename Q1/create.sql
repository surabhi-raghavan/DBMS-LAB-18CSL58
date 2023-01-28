create table publisher
(
    publisher_name varchar(20),
    address varchar(20),
    phone number(10)
);

create table book
( 
    book_id int primary key, 
    title varchar(20), 
    publisher_name varchar(20) references publisher(publisher_name) on delete cascade,
    pub_year int
);

create table  book_authors
(
    book_id int references book(book_id) on delete cascade, 
    author_name varchar(20) 
);

create table library_programme
(
    programme_id int primary key, 
    programme_name varchar(20), 
    address varchar(20)
);

create table book_copies 
(
    book_id int references book(book_id) on delete cascade, 
    programme_id int references library_programme(programme_id) on delete cascade, 
    no_of_copies int 
); 

create table book_lending
(
    book_id int references book(book_id) on delete cascade,
    programme_id int references library_programme(programme_id) on delete cascade,
    card_no int,
    date_out date, 
    due_date date
);
create table student 
(
    usn varchar(10) primary key, 
    sname varchar(20),
    adress varchar(20),
    phone number(10), 
    gender varchar(1) 
);

create table semsec
(
    ssid int primary key,
    sem int,
    sec varchar(1)
);

create table class 
(
    usn varchar(10) references student(usn) on delete cascade,
    ssid int references semsec(ssid) on delete cascade
);

create table course
(
    subcode varchar(6) primary key, 
    title varchar(10),
    sem int,  
    credits int
);

create table iamarks
(
    usn varchar(10) references student(usn) on delete cascade,
    subcode varchar(6) references course(subcode) on delete cascade,
    ssid int references semsec(ssid) on delete cascade,
    test1 int,
    test2 int,
    test3 int,
    finalia int default null
);
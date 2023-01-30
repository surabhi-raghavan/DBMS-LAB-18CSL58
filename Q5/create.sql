create table department
(
    dno int primary key,
    dname varchar(20),
    mgrssn int,
    mgrstartdate date
);

create table employee
(
    ssn int primary key, 
    sname varchar(20),
    adress varchar(20),
    sex varchar(1),
    salary int,
    superssn int references employee(ssn) on delete cascade,
    dno int references department(dno) on delete cascade
);

alter table department 
modify(
    mgrssn int references employee(ssn) on delete cascade 
); 

create table dloc
(
    dno int references department(dno) on delete cascade,
    dloc varchar(20)
);

create table project
(
    pno int primary key,
    pname varchar(20),
    ploc varchar(20),
    dno int references department(dno) on delete cascade
);

create table works_on 
(
    ssn int references employee(ssn) on delete cascade,
    pno int references project(pno) on delete cascade,
    e_hours int
);

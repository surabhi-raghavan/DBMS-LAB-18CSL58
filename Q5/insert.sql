insert all
    into employee values(1, 'Julia Scott', 'Bangalore','F', 600000, NULL, NULL)
    into employee values(2, 'Mike Ross', 'Mangalore', 'M', 500000, NULL, NULL)
    into employee values(3, 'Edward Scott', 'UK', 'M', 60000, NULL, NULL)
    into employee values(4, 'Evangeline L', 'Mangalore', 'F', 250000, NULL, NULL)
    into employee values(5, 'Katherine S', 'US', 'F', 60000, NULL, NULL)
select * from dual;

insert all 
    into department values(1, 'IT', 1, '10-JAN-2005')
    into department values(2, 'RD', 2, '10-JAN-2005')
    into department values(3, 'Accounts', 3, '10-JAN-2005')
    into department values(4, 'Med', 4, '10-JAN-2005')
    into department values(5, 'Sales', 5, '10-JAN-2005')
select * from dual;

update employee set superssn=1, dno=1 where ssn=1;
update employee set superssn=2, dno=2 where ssn=2;
update employee set superssn=3, dno=3 where ssn=3;
update employee set superssn=4, dno=4 where ssn=4;
update employee set superssn=5, dno=5 where ssn=5;  

insert all
    into employee values(6, 'Jules K', 'Bangalore','M', 600000,1, 1)
    into employee values(7, 'Harvey S', 'Mangalore', 'M', 500000,2, 2)
    into employee values(8, 'Jessica P', 'UK', 'F', 60000, 3, 3)
    into employee values(9, 'Louis L', 'Mangalore', 'M', 250000,4,4)
    into employee values(10, 'Samantha W', 'US', 'F', 60000,5, 5)
    into employee values(11, 'Sam W', 'US', 'F', 700000,5, 5)
    into employee values(12, 'Santha W', 'US', 'F', 60000,5, 5)
    into employee values(13, 'Samantha K', 'US', 'F', 60000,5, 5)
select * from dual;

insert all
    into dloc values(1, 'Bangalore')
    into dloc values(2, 'Bangalore')
    into dloc values(3, 'Bangalore')
    into dloc values(4, 'Bangalore')
    into dloc values(5, 'Bangalore')
select * from dual;

insert all
    into project values(1, 'IOT', 'Bangalore', 1)
    into project values(2, 'Robo', 'Bangalore', 2)
    into project values(3, 'p3', 'Bangalore', 3)
    into project values(4, 'dynamics', 'Bangalore', 4)
    into project values(5, 'leo', 'Bangalore', 5)
select * from dual;

insert all 
    into works_on values(1, 1,1)
    into works_on values(2, 1,2)
    into works_on values(3, 2,3)
    into works_on values(4, 2,4)
    into works_on values(5, 3,5)
    into works_on values(6, 3,6)
    into works_on values(7, 4,7)
    into works_on values(8, 4,6)
    into works_on values(9, 5,5)
    into works_on values(10, 5,4)
    into works_on values(11, 2,3)
    into works_on values(12,2,2)
    into works_on values(13, 3,1)
select * from dual; 


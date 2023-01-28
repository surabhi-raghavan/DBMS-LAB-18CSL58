insert all 
    into publisher values('Navathe', 'Mumbai', 1111111111)
    into publisher values('Pearson', 'Bangalore', 2222222222)
    into publisher values('Mc-Graw Hill', 'Delhi', 3333333333)
    into publisher values('Planata', 'Kolkata', 4444444444)
    into publisher values('Penguin', 'Bangalore', 5555555555)    
 select * from dual;     

 insert all 
    into book values(1, 'DBMS', 'Navathe', 2012)
    into book values(2, 'CNS', 'Pearson', 2012)
    into book values(3, 'DC', 'Mc-Graw Hill', 2016)
    into book values(4, 'CG', 'Planata', 2001)
    into book values(5, 'ATC', 'Penguin', 2012)
select * from dual; 

insert all 
    into book values(1, 'Ani')
    into book values(2, 'Leo')
    into book values(3,'Cris')
    into book values(4, 'Kylian')
    into book values(5, 'Iyer')
select * from dual; 

insert all 
    into library_programme values(1, 'Big Billion Sale', 'Bangalore')
    into library_programme values(2, 'Double Dhamaka', 'Mumbai')
    into library_programme values(3, 'Clearance', 'Delhi')
select * from dual; 

insert all 
    into book_copies values(1, 1, 5)
    into book_copies values(2, 2, 5)
    into book_copies values(3, 3, 5)
    into book_copies values(4, 1, 5)
    into book_copies values(5, 2, 5)
select * from dual; 

insert all 
    into book_lending values(1,1,100, '11-JAN-2017', '11-FEB-2017')
    into book_lending values(2,2,100, '12-JAN-2017', '12-FEB-2017')
    into book_lending values(3,3,100, '13-FEB-2017', '13-MAR-2017')
    into book_lending values(4,1,100, '13-MAY-2017', '11-JUN-2017')
    into book_lending values(5,2,100, '13-MAR-2017', '13-APR-2017')
select * from dual; 

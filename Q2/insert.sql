insert all 
    into salesman values(1000, 'John', 'Bangalore', '22%')
    into salesman values(2000, 'Julia', 'Bangalore', '23%')
    into salesman values(3000, 'Jacob', 'Mangalore', '20%')
    into salesman values(4000, 'Johann', 'Kolkata', '25%')
select * from dual;

insert all 
    into customer values(1, 'Ani', 'Bangalore', 90, 1000)
    into customer values(2, 'Yae', 'Bangalore', 80, 1000)
    into customer values(3, 'Yao Yao', 'Mangalore', 10, 3000)
    into customer values(4, 'Beidou', 'Kolkata', 60, 4000)
select * from dual; 

insert all
    into orders values(1, 1000, '11-JAN-2022', 1, 1000)
    into orders values(2, 2000, '12-JAN-2022', 1, 3000)
    into orders values(3, 3000, '13-JAN-2022', 2, 4000)
select   * from dual; 
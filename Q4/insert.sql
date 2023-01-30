insert all 
    into student values('1BY20CS198', 'Sura', 'Bangalore', 1111111111, 'F')
    into student values('1BY20CS199', 'Ara', 'Bangalore', 2222222222, 'F')
    into student values('1BY20CS200', 'Rohit', 'Bangalore', 3333333333, 'M')
    into student values('1BY19CS198', 'Sagar', 'Bangalore', 4444444444, 'M')
    into student values('1BY19CS199', 'Nagu', 'Bangalore', 5555555555, 'F')
    into student values('1BY19CS200', 'Shriya', 'Bangalore', 6666666666, 'F')
    into student values('1BY18CS198', 'Asrith', 'Bangalore', 7777777777, 'M')
    into student values('1BY18CS199', 'Ashish', 'Bangalore', 8888888888, 'M')
    into student values('1BY18CS200', 'Brindha', 'Bangalore', 9999999999, 'F')
select * from dual;

insert all 
    into semsec values(1, 4,'A')
    into semsec values(2, 4,'B')
    into semsec values(3, 4,'C')
    into semsec values(4, 6,'A')
    into semsec values(5, 6,'B')
    into semsec values(6, 6,'C')
    into semsec values(7, 8,'A')
    into semsec values(8, 8,'B')
    into semsec values(9, 8,'C')
select * from dual;

insert all 
    into class values('1BY20CS198', 1)
    into class values('1BY20CS199', 2)
    into class values('1BY20CS200', 3)
    into class values('1BY19CS198', 4)
    into class values('1BY19CS199', 5)
    into class values('1BY19CS200', 6)
    into class values('1BY18CS198', 7)
    into class values('1BY18CS199', 8)
    into class values('1BY18CS200', 9)
select * from dual; 

insert all 
    into course values('18CS41', 'MATH', 4, 3)
    into course values('18CS61', 'SE', 6, 3)
    into course values('18CS81', 'MANAGEMENT', 8, 3)
SELECT * FROM DUAL; 

insert all 
    into iamarks values('1BY20CS198','18CS41',1, 14,15,16, NULL)
    into iamarks values('1BY20CS199','18CS41',2, 14,15,16, NULL)
    into iamarks values('1BY20CS200','18CS41',3, 14,15,16, NULL)
    into iamarks values('1BY19CS198','18CS61',4, 14,15,16, NULL)
    into iamarks values('1BY19CS199','18CS61',5, 14,15,16, NULL)
    into iamarks values('1BY19CS200','18CS61',6, 14,15,16, NULL)
    into iamarks values('1BY18CS198','18CS81',7, 14,15,16, NULL)
    into iamarks values('1BY18CS199','18CS81',8, 14,15,16, NULL)
    into iamarks values('1BY18CS200','18CS81',9, 14,15,16, NULL)
insert all 
    into actor values(1, 'Daniel Craig', 'M') --should act in 2 movies
    into actor values(2, 'Peter Drury','M')
    into actor values(3, 'Anna Lewandowski', 'F') --acted in movie beforee 2000 and after 2015
    into actor values(4, 'Alia Bhatt', 'F')
select * from dual; 

insert all 
    into director values(1, 'Alfred Hitchcock', 1111111111)
    into director values(2, 'Steven Spielberg', 2222222222)
    into director values(3, 'Robert Lewandowski', 3333333333)
select * from dual; 

insert all 
    into movies values(1, 'Land of Black Gold', 1999,'English',1) 
    into movies values(2,'Flight 714 to Sydney', 2016,'English', 2) --daniel craig acts in both of these
    into movies values(3,'TinTin in Tibet', 1999, 'English',3)
    into movies values(4, 'The Blue Lotus', 2016, 'English',3) --Anna works in both 
    into movies values(5, 'The Broken Ear', 2000, 'English', 2)--Steven Spielberg's Movie
select * from dual; 

insert all 
    into movie_cast values(1,1,'Lead Male')
    into movie_cast values(1,2,'Lead Male')
    into movie_cast values(3,3,'Lead Female')
    into movie_cast values(3, 4,'Lead Female')
    into movie_cast values(2,5,'Supporting Male')
select * from dual;  

insert all 
    into rating values(1,5)
    into rating values(2,4)
    into rating values(3,5)
    into rating values(4,4)
    into rating values(5,3)
select * from dual; 
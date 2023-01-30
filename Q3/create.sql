create table actor
(
    act_id int primary key, 
    act_name varchar(20),
    gender varchar(1)
); 

create table director
(
    dir_id int primary key,
    dir_name varchar(20),
    dir_phone number(10)
);

create table movies 
(
    mov_id int primary key,
    mov_title varchar(20), 
    mov_year int, 
    mov_lang varchar(20),
    dir_id int references director(dir_id) on delete cascade
);

create table movie_cast
(
    act_id int references actor(act_id) on delete cascade,
    mov_id int references movies(mov_id) on delete cascade, 
    cast_role varchar(20)
);

create table rating
(
    mov_id int references movies(mov_id) on delete cascade,
    revstars int
);
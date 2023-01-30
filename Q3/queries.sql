/*
1) List the titles of all movies directed by ‘Hitchcock’.
*/

select M.mov_id,M.mov_title
from movies M
where M.dir_id in(select director.dir_id
                from director
                where director.dir_name like '%Hitchcock');   

/*
2) Find the movie names where one or more actors acted in two or more movies.
*/

select M.mov_title 
from movies M
join movie_cast mc 
on m.mov_id=mc.mov_id
where act_id in(select act_id 
                from movies
                join movie_cast 
                on movie.mov_id=movie_cast.mov_id
                having count(act_id)>=2
                group by act_id);

/*
3) List all actors who acted in a movie before 2000 and also in a movie after 2015 (use JOIN operation).
*/ 
select * 
from actor a
join movie_cast mc 
on mc.act_id=a.act_id
join movie m 
on mc.mov_id=m.mov_id 

where 
mc.act_id in (
    select movie_cast.act_id 
    from movie 
    join movie_cast 
    on movie_cast.act_id=movie.act_id 
    where mov_year<2000
)
and 
mc.act_id in (
    select movie_cast.act_id 
    from movie 
    join movie_cast 
    on movie_cast.act_id=movie.act_id 
    where mov_year>2015
); 

/*
4) Find the title of movies and number of stars for each movie that has at least one
rating and find the highest number of stars that movie received. Sort the result by
movie title
*/

select mov_title, max(revstars) as MAX_RATING 
from movie
join rating 
on rating.mov_id=movie.mov_id 
group by mov_title
having max(rev_stars)>0
order by mosv_title; 

/*
5) Update rating of all movies directed by ‘Steven Spielberg’ to 5.
*/
select * from rating; 
update rating 
set revstars=5 
where mov_id in (select mov_id 
                 from movies
                 join director using director(dir_id)
                 where director.dir_name='Steven Spielberg'); 

select * from rating; 
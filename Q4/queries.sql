/*
1) List all the student details studying in fourth semester ‘C’ section.
*/

select * 
from student
where student.usn in (select usn 
                      from class 
                      join semsec 
                      on semcec.ssid=class.ssid
                      where semsec.sem=4 and semsec.sec='C'); 

/*
2) Compute the total number of male and female students in each semester and in each section.
*/

select 
count(case when student.gender='M' then 1 END) as MALE,
count(case when student.gender='F' then 1 END) as FEMALE,
semsec.sem, semsec.sec

from student 
join class 
on student.usn=class.usn 
join semsec
on class.ssid=semsec.ssid 
group by semsec.sem, semsec.sec;
order by semsec.sem, semsec.sec;

/*
3) Create a view of Test1 marks of student USN ‘1B18CS024’ in all Courses.
*/

create view test_1_marks  as 
select Test1, usn 
from iamarks
where usn='1BY20CS198'; 
select * from test_1_marks; 

/*
4) Calculate the FinalIA (average of best two test marks) and update the corresponding table for all students.
*/

update iamarks 
set finalia= case 
             when greatest(test1, test2)= greatest(test2,test3)
                then (greatest(test1, test2)+ least(test2,test3))/2
            else 
                (greatest(test1,test2)+greatest(test2,test3))/2
            end; 
select * from iamarks; 

/*
5) Categorize students based on the following criterion:
        If FinalIA = 17 to 20 then CAT = ‘Outstanding’
        If FinalIA = 12 to 16 then CAT = ‘Average’
        If FinalIA< 12 then CAT = ‘Weak’
   Give these details only for 8th semester A, B, and C section students.
*/

select iamarks.usn, iamarks.subcode, iamarks.finalia, semsec.sem, semsec.sec, 
(case 
    when iamarks.finalia between 17 and 20 then 'OUTSTANDING'
    when iamarks.finalia between 12 and 16 then 'AVERAGE'
    else 'WEAK'
end) as CATEGORY

from iamarks
join semsec 
on iamarks.ssid=semsec.ssid
where semsec.sem=8
order by sec, iamarks.subcode;
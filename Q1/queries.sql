/*
1) Retrieve details of all books in the library id, title, name of publisher, authors,
number of copies in each Programme, etc.
*/
select B.book_id, B.title, BA.Author_name, BC.Book_copies, P.Publisher_name, L.Programme_id
from book B, Book_copies BC,book_authors BA, publisher P, library_programme library_programme
where 
B.book_id=BC.book_id and
BC.Programme_id=L.Programme_id and 
BA.book_id= B.book_id; 

/*
2) Get the particulars of borrowers who have borrowed more than 3 books, but from
Jan 2017 to Jun 2017
*/
select BL.card_no, BL.date_out, count(BL.card_no)
from Book_lending BL 
where 
BL.date_out between '01-JAN-2017' and '01-JUN-2017'
and 
count(BL.card_no)>=3
group by BL.card_no; 

/*
3) Delete a book in BOOK table. Update the contents of other tables to reflect this data
manipulation operation.
*/

delete 
from book
where book_id=1; 
select * from book; 
select* from book_copies; 

/*
4) Partition the BOOK table based on year of publication. Demonstrate its working
with a simple query.
*/

create table pub_2016 as 
select * from book where pub_year=2016;
select * from pub_2016;  

/*
5) Create a view of all books and its number of copies that are currently available in
the Library.
*/

create view Borrow as 
select B.Book_ID, B.Book_title, BC.no_of_copies
from book B, book_copies BC
where  B.Book_id=BC.Book_id;

select * from Borrow; 
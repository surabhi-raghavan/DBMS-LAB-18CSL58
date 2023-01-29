/*
1) Count the customers with grades above Bangalore’s average.
*/

select grade, count(distinct cust_id)
from customer 
having grade> 
(select AVG(grade)
 from customer
 where customer.city='Bangalore'
)
group by grade;

/*
2) Find the name and numbers of all salesman who had more than one customer.
*/

select s.s_name, s.id, count(C.cust_id) as No_of_customers
from salesman s, customer C
where (select count(salesman.id)
       from customer
       where salesman.id=customer.id)
       >1; 

/*
3) List all the salesman and indicate those who have and don’t have customers in their cities (Use UNION operation.)
*/

select s.s_name,s.id, C.c_name, s.commission
from salesman s, customer C
where s.city=C.city 
UNION
select s.s_name,s.id, 'NO MATCH', s.comission  
from salesman s
where Not city = any(select city from customer)
order by 2 DESC; 

/*
4) Create a view that finds the salesman who has the customer with the highest order of a day.
*/

create view VW as 
select s.s_name, s.ids, b.ord_no, b.ord_date 
from salesman s, orders b 
where b.amt=(select max(orders.amt) from orders where orders.ord_date =b.ord_date) and s.id=b.id; 

select * from VW; 

/*
5) Demonstrate the DELETE operation by removing salesman with id 1000. All his orders must also be deleted.
*/

delete 
from salesman 
where salesman.id=1000; 
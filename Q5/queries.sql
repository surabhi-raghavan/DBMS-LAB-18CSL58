/*
1) Make a list of all project numbers for projects that involve an employee whose last name is ‘Scott’, either as a worker or as a manager of the department that controls the project.
*/

select p1.pno 
from project p1, employee e, department d
where e.sname like '%Scott' and e.dno=d.dno and d.dno=p.dno
UNION
select w1.pno 
from works_on w1, employee e1, department d1
where e.sname like '%Scott' and e1.dno=d1.dno and w1.ssn=e1.ssn;

/*
2) Show the resulting salaries if every employee working on the ‘IoT’ project is given a 10 percent raise.
*/

select ssn, salary as prev_sal, (1.1*salary) as raised
from employee
where ssn in (select ssn from works_on 
              join project 
              on works_on.pno=project.pno
              where project.pname= 'IOT');

/*
3) Find the sum of the salaries of all employees of the ‘Accounts’ department, as well as the maximum salary, the minimum salary, and the average salary in this department.
*/

select sum(salary) as SUM, max(salary) as MAX, min(salary) as MIN, avg(salary) as AVG 
from employee 
join department 
on employee.dno=department.dno
where department.dname='ACCOUNTS';      

/*
4) Retrieve the name of each employee who works on all the projects controlled by department number 5 (use NOT EXISTS operator).
*/

select * 
from employee
where not EXISTS
(
    select project.pno
    from project 
    where project.dno=5 and
    project.pno not in (select pno from works_on where employee.ssn=works_on.ssn)
);

/*
5) For each department that has more than five employees, retrieve the department number and the number of its employees who are making more than Rs. 6,00,000.
*/

select dno, count(dno)
from employee 
where dno in (
    select E.dno from employee E 
    group by E.dno 
    having count(E.dno)>5 
)
and salary>600000
group by dno;
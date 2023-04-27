select * from Q_EmployeeInfo;
select * from Q_EmployeePostion;

/* 1
Write a query to fetch the EmpFname from the EmployeeInfo table in upper case and use the ALIAS name as EmpName.
*/
SELECT upper(empfname) as EmpName from Q_EmployeeInfo;

/* 2
Write a query to fetch the number of employees working in the department ‘HR’.
*/
select count(empfname) as Total_Employees from Q_EmployeeInfo where DEPARTMENT ='HR';

/* 3
Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.
*/
select substr(emplname,1,4) as First_4_Char from Q_EmployeeInfo;

/* 4
Write a query to create a new table which consists of data and structure copied from the other table.
*/
create table copy_Q_EmployeeInfo as (select * from Q_EmployeeInfo);
select * from copy_Q_EmployeeInfo;


/* 5
Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
*/
select concat(concat(empfname,' '),emplname) as FullName from Q_EmployeeInfo;

/* 6
Write a query to retrieve Departments who have less than 2 employees working in it.
*/
select count(*) as Total,department from Q_EmployeeInfo group by department having count(*) < 2;

/* 7
Write a query to find the third-highest salary from the EmpPosition table.
*/
select salary from Q_EmployeePostion order by salary desc;

select min(salary) 
from
(select salary from Q_EmployeePostion order by salary desc)
where rownum <= 3;

/* 8
Write a query to find the Nth highest salary from the table without using TOP/limit keyword.
*/



/* 9
Write a query to fetch 50% records from the EmployeeInfo table.
*/
select *  from Q_EmployeeInfo where rownum <= (select count(*) from Q_EmployeeInfo)/2;


/* 10
Write a query to retrieve duplicate records from a table.
*/
select empid, count(*) from Q_EmployeeInfo GROUP BY empid HAVING count(*) > 1;


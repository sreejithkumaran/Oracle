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
select count(empfname) from Q_EmployeeInfo group

/* 10
Write a query to retrieve duplicate records from a table.
*/
select empid, count(*) from Q_EmployeeInfo GROUP BY empid HAVING count(*) > 1;
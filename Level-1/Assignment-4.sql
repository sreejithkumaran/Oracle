/* 4
Write a query to create a new table which consists of data and structure copied from the other table.
*/
create table copy_Q_EmployeeInfo as (select * from Q_EmployeeInfo);
select * from copy_Q_EmployeeInfo;
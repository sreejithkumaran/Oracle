/* 6
Write a query to retrieve Departments who have less than 2 employees working in it.
*/
select count(*) as Total,department from Q_EmployeeInfo group by department having count(*) < 2;

/*
1	Account
1	IT
*/
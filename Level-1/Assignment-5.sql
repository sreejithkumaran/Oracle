
/* 5
Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.
*/
select concat(concat(empfname,' '),emplname) as FullName from Q_EmployeeInfo;

/*
Sanjay Mehra
Ananya Mishra
Rohan Diwan
Sonia Kulkarni
Ankit Kapoor
Sreejith Kumaran
*/
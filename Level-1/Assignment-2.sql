/* 2
Write a query to fetch the number of employees working in the department ‘HR’.
*/

Select * from Q_EmployeeInfo;

select count(empfname) as Total_Employees from Q_EmployeeInfo where DEPARTMENT ='HR';

/*
1	Sanjay	Mehra	HR	P1	HYDERABAD(HYD)	01-12-76	M
2	Ananya	Mishra	Admin	P2	DELHI(DEL)	02-05-68	F
3	Rohan	Diwan	Account	P3	MUMBAI(BOM)	01-01-80	M
4	Sonia	Kulkarni	HR	P1	HYDERABAD(HYD)	02-05-92	F
5	Ankit	Kapoor	Admin	P2	DELHI(DEL)	03-07-94	M
110	Sreejith	Kumaran	IT	P5	BANGALORE(BLR)	01-12-87	M
*/

/*
2
*/
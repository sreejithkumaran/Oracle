/* 9
Write a query to fetch 50% records from the EmployeeInfo table.
*/
select *  from Q_EmployeeInfo where rownum <= (select count(*) from Q_EmployeeInfo)/2;

/*
1	Sanjay	Mehra	HR	P1	HYDERABAD(HYD)	01-12-76	M
2	Ananya	Mishra	Admin	P2	DELHI(DEL)	02-05-68	F
3	Rohan	Diwan	Account	P3	MUMBAI(BOM)	01-01-80	M
*/
/*
Write a PL/SQL block to create a stored procedure that takes in two dates and returns a list of employees who were hired between those dates, 
along with their hire dates and job title.

select * from Q_EmployeeInfo;
select * from Q_EmployeePostion;
desc Q_EmployeePostion;

Select Q_EmployeeInfo.EMPID, Q_EmployeeInfo.EMPFNAME, Q_EmployeeInfo.EMPLNAME, Q_EmployeePostion.EMPPOSTION, Q_EmployeePostion.DATEOFJOINING
FROM Q_EmployeeInfo
INNER JOIN Q_EmployeePostion
ON Q_EmployeeInfo.EMPID = Q_EmployeePostion.EMPID
WHERE Q_EmployeePostion.DATEOFJOINING > '01-04-22' and  Q_EmployeePostion.DATEOFJOINING < '02-05-22';

*/
/*
CREATE OR REPLACE PROCEDURE filterByDate(start_date IN DATE, end_date IN DATE)
AS
BEGIN
Select Q_EmployeeInfo.EMPID, Q_EmployeeInfo.EMPFNAME, Q_EmployeeInfo.EMPLNAME, Q_EmployeePostion.EMPPOSTION, Q_EmployeePostion.DATEOFJOINING
FROM Q_EmployeeInfo
INNER JOIN Q_EmployeePostion
ON Q_EmployeeInfo.EMPID = Q_EmployeePostion.EMPID
WHERE Q_EmployeePostion.DATEOFJOINING > '01-04-22' and  Q_EmployeePostion.DATEOFJOINING < '02-05-22';
END;
/
*/

CREATE OR REPLACE PROCEDURE filterByDate(start_date IN DATE, end_date IN DATE)
AS
emp_Records Q_EmployeePostion%ROWTYPE;
BEGIN
Select EMPPOSTION, DATEOFJOINING INTO emp_Records
FROM Q_EmployeePostion
WHERE DATEOFJOINING > start_date and  DATEOFJOINING < end_date;
 dbms_output.put_line( emp_Records.EMPPOSTION||emp_Records.DATEOFJOINING );
END;
/

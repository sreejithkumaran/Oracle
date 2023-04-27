/*
1.Write a PL/SQL block to calculate the incentive of an employee whose ID is 110.

CLEAR SCREEN
select * from Q_EmployeeInfo;
select * from Q_EmployeePostion;

DESC Q_EmployeeInfo
DESC Q_EmployeePostion

INSERT INTO Q_EmployeeInfo(EMPID,EMPFNAME,EMPLNAME,DEPARTMENT,PROJECTID,ADDRESS,DOB,GENDER) 
VALUES (110,'Sreejith','Kumaran','IT','P5','BANGALORE(BLR)','01/12/1987','M');

INSERT INTO Q_EmployeePostion(EmpId,EmpPostion,DateOfJoining,Salary)
VALUES (110,'SDET','01/05/2022','100000');
*/
SET SERVEROUTPUT ON

DECLARE
c_salary NUMBER(15);
incentive NUMBER(10,2);
BEGIN
Select salary , salary * 0.15 INTO c_salary, incentive
FROM Q_EmployeePostion WHERE empid = 110;
DBMS_OUTPUT.PUT_LINE('OLD Salary  = ' || TO_CHAR(c_salary));
DBMS_OUTPUT.PUT_LINE('Incentive  = ' || TO_CHAR(incentive));
DBMS_OUTPUT.PUT_LINE('Updated Salary  = ' || TO_CHAR(c_salary+incentive));
END;
/

/*
PL/SQL procedure successfully completed.
OLD Salary  = 100000
Incentive  = 15000
Updated Salary  = 115000
*/

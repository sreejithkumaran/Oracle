CREATE TABLE Q_EmployeeInfo(
EmpId NUMBER(5) NOT NULL,
EmpFName VARCHAR(25),
EmpLName VARCHAR(25),
Department VARCHAR(10),
Project VARCHAR(20),
Address VARCHAR(50),
DOB DATE,
Gender VARCHAR(1),
CONSTRAINT empId_pk PRIMARY KEY (EmpId)
);
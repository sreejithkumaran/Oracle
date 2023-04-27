CREATE TABLE Q_EmployeePostion(
EmpId NUMBER(5) NOT NULL,
EmpPostion VARCHAR(20),
DateOfJoining DATE,
Salary NUMBER(15),
CONSTRAINT fk_empId
  FOREIGN KEY(EmpId)
  REFERENCES Q_EmployeeInfo(EmpId)
);



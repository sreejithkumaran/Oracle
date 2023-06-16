/*
Write a PL/SQL block to create a trigger that automatically updates a table with the current date and time whenever a row is inserted.
*/
CREATE TABLE Emp_Log (
    change_date        DATE,
    change_desc        VARCHAR2(30)
);

CREATE OR REPLACE TRIGGER Emp_Audit_Trigger
    AFTER INSERT ON Q_EmployeeInfo
    FOR EACH ROW
DECLARE
    v_empno         Q_EmployeeInfo.empno%TYPE;
    v_action        VARCHAR2(7);
BEGIN
    v_action := 'Added';
    v_empno := :NEW.empno;
	
    INSERT INTO Emp_Log VALUES (SYSDATE,
        v_action || ' employee # ' || v_empno);
		
Exception
 When Others
   Then raise_application_error(-20001,sqlerrm);		
END;
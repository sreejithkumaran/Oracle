/* 7.
Write a PL/SQL block to calculate the area of a rectangle, given its length and width as input.
*/
DECLARE
v_length NUMBER(4,2) := &input1;
v_breath NUMBER(4,2) := &input2;
v_area NUMBER(4,2);

BEGIN
v_area := v_length * v_breath; 
DBMS_OUTPUT.put_line ('Area of Rectangle : ' || v_area);
END;
/

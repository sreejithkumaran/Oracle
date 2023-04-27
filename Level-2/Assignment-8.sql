/*8.
Write a PL/SQL block to display the first 10 even numbers.
*/

DECLARE
v_number NUMBER := 0;
BEGIN
  WHILE v_number <= 10 LOOP
  dbms_output.put_line(v_number);
  v_number := v_number+2;
END LOOP;
END;


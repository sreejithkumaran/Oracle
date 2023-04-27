/*6.
Write a PL/SQL block to display the current date and time.
*/

DECLARE
d_current_date DATE;
BEGIN
d_current_date := CURRENT_DATE;
DBMS_OUTPUT.put_line ('The Date today is: ' || to_char(d_current_date,'DD/MM/YYYY HH24:MI:SS'));
END;
/

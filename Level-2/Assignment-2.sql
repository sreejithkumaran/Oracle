/*
2.Check whether a given character is letter or digit

CLEAR SCREEN
*/

DECLARE
get_ctr CHAR(1) :='&input';
BEGIN
IF ( get_ctr >= 'A' AND get_ctr <= 'Z' ) OR ( get_ctr >= 'a' AND get_ctr <= 'z' ) THEN
      dbms_output.Put_line ('The given character is a letter');
ELSE
      dbms_output.Put_line ('The given character is not a letter');
      IF get_ctr BETWEEN '0' AND '9' THEN
          dbms_output.Put_line ('The given character is a number');
      ELSE
      dbms_output.Put_line ('The given character is not a number');
      END IF;
END IF;
END;



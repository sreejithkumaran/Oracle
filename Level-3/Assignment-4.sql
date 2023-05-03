/*
Write a PL/SQL block to create a function that takes in a string as input and returns the string in reverse order.);
Level - 2 . Assignment 5
DECLARE
  l_str varchar2(30):='&enter_string';
  rev_str varchar2(20);
  len  NUMBER;
BEGIN
  len:=length(l_str);
  
  FOR i in REVERSE 1..len LOOP
    rev_str:=rev_str || substr(l_str,i,1);
  END LOOP;
  dbms_output.put_line('String is:'||l_str);
  dbms_output.put_line('Reverse of String is:'||rev_str);

  IF lower(l_str)=lower(rev_str) THEN
    dbms_output.put_line('String IS A PALINDROME');
  ELSE      
    dbms_output.put_line('String IS NOT A PALINDROME');
  END IF;
 
END;


*/


CREATE OR REPLACE FUNCTION reverseString(inputString IN varchar2)
RETURN VARCHAR2 IS
l_str varchar2(30):=inputString;
rev_str varchar2(20);
len  NUMBER;
BEGIN
len:=length(l_str);
  
  FOR i in REVERSE 1..len LOOP
    rev_str:=rev_str || substr(l_str,i,1);
  END LOOP;
  dbms_output.put_line('String is:'||l_str);
  dbms_output.put_line('Reverse of String is:'||rev_str);
  RETURN rev_str;
END;
/


DECLARE 
   input_str varchar2(30):='&enter_string';
   result_str varchar2(30);
   
BEGIN 
   result_str := reverseString(input_str); 
   dbms_output.put_line('Total no. of Customers: ' || result_str); 
END; 


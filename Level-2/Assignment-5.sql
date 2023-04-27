/*
5.Write a PL/SQL program to find whether a given string is palindrome or not.
clear screen
*/

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

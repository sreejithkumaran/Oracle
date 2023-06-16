/*
Write a PL/SQL block to create a nested table type, insert data into the nested table, and then query the nested table to retrieve specific data.
*/

SET SERVEROUTPUT ON;

CREATE OR REPLACE TYPE My_Nested_Table IS TABLE OF VARCHAR2 (10);
/
CREATE TABLE My_Subject(
	 subject_id    	NUMBER,
	 subject_name  	VARCHAR2 (20),
	 sub_schedule_day   My_Nested_Table
) NESTED TABLE sub_schedule_day STORE AS nested_tab_space;

/
INSERT INTO My_Subject (subject_id, subject_name, sub_schedule_day)
VALUES (101, 'Maths', My_Nested_Table('mon', 'Fri'));
INSERT INTO My_Subject (subject_id, subject_name, sub_schedule_day)
VALUES (102, 'Computer', My_Nested_Table('mon','wed', 'Fri'));
/

SELECT * FROM My_Subject;
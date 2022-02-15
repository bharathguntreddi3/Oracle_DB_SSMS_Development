-- set serveroutput on
declare 
BEGIN
	abc varchar(10) := 'Hello World!';
	dbms_output.put_line(abc);
END;
/
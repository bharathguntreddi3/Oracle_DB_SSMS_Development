/*pl/sql program for reverse of a number*/
-- set serveroutput on 
DECLARE
	n NUMBER(5) := '&n';
	rev NUMBER(5) := 0;
	remi NUMBER(5) := 0;
BEGIN
WHILE(n!=0)
	LOOP
		remi := MOD(n,10);
		rev := (rev*10) + remi;
		n := TRUNC(n,10);
	END LOOP;
	dbms_output.put_line(rev);
END;
/



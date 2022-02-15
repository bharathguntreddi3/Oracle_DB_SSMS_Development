/*pl/sql using string literals*/
-- SET SERVEROUTPUT ON
DECLARE 
   messages varchar2(30) := 'hello''world'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/
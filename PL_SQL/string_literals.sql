/*pl/sql using string literals*/
SET SERVEROUTPUT ON
DECLARE 
   message  varchar2(30) := 'hello''world'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/
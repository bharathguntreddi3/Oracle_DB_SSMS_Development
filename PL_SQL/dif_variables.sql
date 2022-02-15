/*pl/sql using of different variables*/
-- SET SERVEROUTPUT ON
DECLARE 

   a integer := 10; 
   b integer := 20; 
   c integer; 
   f real;  -- float
   
BEGIN 

   c := a + b; 

   dbms_output.put_line('Value of c: ' || c); 

   f := 70.0/3.0; 

   dbms_output.put_line('Value of f: ' || f); 

END; 
/
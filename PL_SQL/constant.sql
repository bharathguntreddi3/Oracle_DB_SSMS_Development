/*pl/sql using constant key keyword for constant values*/
-- PI CONSTANT NUMBER := 3.141592654; 
DECLARE 
   pi constant number := 3.141592654;      -- constant declaration 
   radius number(5,2);      
   dia number(5,2);  
   circumference number(7, 2); 
   area number (10, 2); 
BEGIN  
   radius := 9.5;  
   dia := radius * 2;  
   circumference := 2.0 * pi * radius; 
   area := pi * radius * radius; 
   dbms_output.put_line('Radius: ' || radius); 
   dbms_output.put_line('Diameter: ' || dia); 
   dbms_output.put_line('Circumference: ' || circumference); 
   dbms_output.put_line('Area: ' || area); 
END; 
/
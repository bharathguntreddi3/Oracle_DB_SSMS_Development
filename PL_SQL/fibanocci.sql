/*pl/sql programe to find the fibanocci series of the given number*/
-- SET SERVEROUTPUT ON
declare
    num1 number:=0;
    num2 number:=1;
    lastnum number;
    n number:=&n;
    i number;
 
begin
    dbms_output.put_line('Fibonacci series is:');
    dbms_output.put_line(num1);
    dbms_output.put_line(num2);
 
    for i in 2..n
    loop
            lastnum:=num1+num2;
            num1:=num2;
            num2:=third;
            dbms_output.put_line(lastnum);
    end loop;
end;
/
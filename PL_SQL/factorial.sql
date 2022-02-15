/*PL/SQL programe to print factorial of a number*/
-- SET serveroutput ON
DECLARE
    n number := '&n';
    fact number := 1;
    i number ;
BEGIN
    FOR i in 1..n
        LOOP
            fact = fact * i;
        END LOOP;
    dbms_output.put_line('factorial = ' || fact );
END;
/

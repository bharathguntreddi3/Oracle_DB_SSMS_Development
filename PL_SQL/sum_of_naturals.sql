/*PL/SQL programe to print sum of the natural numbers*/
-- SET SERVEROUTPUT ON
DECLARE
    n number := '&n';
    sum number ;
BEGIN
    FOR i in 1..n+1
        LOOP
            sum := ( (n*(n+1))/2 );
            dbms_output_put_line(sum);
        END LOOP;
END;
/
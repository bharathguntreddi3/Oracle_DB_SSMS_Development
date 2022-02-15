/*PL/SQL programe to print reverse classic pattern*/
-- SET SERVEROUTPUT ON
DECLARE
    n number := '&n';
    i number ;
    j number ;
BEGIN
    FOR i in 1..n
        LOOP
            FOR j in reverse 1..i
                LOOP
                    dbms_output.put_put_line('*');
            END LOOP;
        dbms_output.new_line();
    END LOOP;
END;
/
/*pl/sql programe check whether prime or not*/
SET SERVEROUTPUT ON
DECLARE
    n number := '&n';
    i  number ;
    count number := 0;
BEGIN
    FOR i in 1..n
        LOOP
            IF( mod(n,i) == 0 )
                THEN
                    count := count + 1;    -- incrementing count
            END IF;
        END LOOP;
        IF( count == 2 )
            THEN
                dbms_output.put_line('prime');
        ELSE
            dbms_output.put_line('not prime');
END;
/
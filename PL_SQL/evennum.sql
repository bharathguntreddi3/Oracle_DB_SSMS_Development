/*pl/sql programme to print even numbers*/
-- SET serveroutput ON
DECLARE
    n NUMBER(10) :='&n';
    i NUMBER(5);
BEGIN
    for i in 0..n   -- run loop from o to n
    LOOP
        if(mod(i,2)   -- MOD(,) does a modula division
            dbms_output.put_line(i);
        END IF;
    END LOOP
END;
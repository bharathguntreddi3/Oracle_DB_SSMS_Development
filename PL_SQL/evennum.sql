/*pl/sql programme to print even numbers*/
SET serveroutput ON
DECLARE
    n NUMBER(10) :='&n';
    i NUMBER(5);
BEGIN
    for i IN 0..n    -- run loop from o to n
        if(mod(i,2)   -- MOD(,) does a modula division
            dbms_output.putl_ine(i);
        END IF;
    END LOOP
END;
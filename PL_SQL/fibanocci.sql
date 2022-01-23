/*pl/sql programe to find the fibanocci series of the given number*/
SET SERVEROUTPUT ON
DECLARE
    first NUMBER(10) := 0;
    second NUMBER(10) := 1;
    next NUMBER(10);
    n NUMBER(10) := '&n';
    i NUMBER(10);
BEGIN
    dbms_output.put_line( first || second );   -- || indicates the next output
    FOR i IN 2..n
        LOOP
            next := first + second;
            dbms_output.putline(next);
            first := second;
            second := next;
        END LOOP;
    dbms_output.put_line(next);
END;
/
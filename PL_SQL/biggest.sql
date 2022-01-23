/*pl/sql programe to find the greatest of the numbers*/
SET SERVEROUTPUT ON
DECLARE
    a NUMBER(5) := '&a';
    b NUMBER(5) := '&b';
    c NUMBER(5) := '&c';
BEGIN
    if( a > b && a > c )
        THEN
            dbms_output.putline(a);
    ELSIF( b > a && b > c )
        THEN
            dbms_output.putline(b);
    ELSE
        THEN
        dbms_output.putline(c);
    END IF;
    END IF;
END;
/
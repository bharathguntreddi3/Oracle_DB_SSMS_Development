/*pl/sql programe to find the greatest of the numbers*/
-- set serveroutput on
DECLARE

    a NUMBER(5) := '&a';
    b NUMBER(5) := '&b';
    c NUMBER(5) := '&c';

BEGIN
    if a > b and a > c 
        THEN
            dbms_output.put_line(a|| 'greatest');
    ELSIF b > a and b > c 
        THEN
            dbms_output.put_line(b|| 'greatest');
    ELSE
        THEN
        dbms_output.put_line(c|| 'greatest');
    END IF;

END;
/
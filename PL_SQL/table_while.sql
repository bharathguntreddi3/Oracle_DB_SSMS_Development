/*pl/sql  programe to print multiplication table*/
SET SERVEROUTPUT ON
DECLARE
    n number := '&n';
    i number ;
    dbms_output.put_line('Table :' || n );
BEGIN
    WHILE( n <= 12 )
        LOOP
            dbms_output.put_line( n || '*' || i || '=' || n*i );
        END LOOP;
END;
/
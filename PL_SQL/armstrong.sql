/*pl/sql programe to check and print armstrong numbers*/
SET SERVEROUTPUT ON
DECLARE 
    sum number := 0;
    remi number ;
    n number := '&n';
BEGIN
    WHILE( n > 0 )
        LOOP
            remi := mod(n,10);
            sum := sum  + (remi * remi * remi);     -- cube(remi);
            n := TRUNC(n,10);
        END LOOP;
        dbms_output.put_line(sum );
    IF( sum == n )
        THEN
            dbms_output.put_line('armstrong' || sum);
    ELSE
        dbms_output.put_line('not armstrong');
        END IF;
END;
/
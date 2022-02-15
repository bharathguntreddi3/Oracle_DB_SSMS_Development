/*PL/SQL peograme to find the sum of the digiuts of a given number*/
-- SET SERVEROUTPUT ON
DECLARE
    n number := '&n';
    sumo number := 0;
    remi number ;
BEGIN
    WHILE( n > 0 )
        LOOP
            remi := mod(n,10);
            sumo := sumo + remi;
            n := TRUNC(n,10);
            dbms_output.put_line(sumo);
        END LOOP;
END;
/

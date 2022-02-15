/*PL/SQL programe to print reverse of a number*/
-- SET SERVEROUTPUT ON
DECLARE
    n varchar(20) := '&n';
    rev varchar(20);
    len number(20);
    
BEGIN
    dbms_output.put_line(n);
    len := length(n);
    FOR i in reverse 1..len
        LOOP
            rev := rev || substr(n,i,1);
        END LOOP;
    dbms_output.put_line(rev);
END;
/

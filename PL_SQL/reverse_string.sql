/*PL/SQL programe to print reverse of a string*/
SET SERVEROUTPUT ON
DECLARE
    str varchar(20) := '&str';
    rev varchar(20);
    len number(20);
    dbms_output.put_line(str);
BEGIN
    len := length(str);
    FOR i in reverse 1..len
        LOOP
            rev := rev || substr(str,i,1);
        END LOOP;
    dbms_output.put_line(rev);
END;
/
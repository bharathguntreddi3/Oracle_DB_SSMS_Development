/*pl/sql programe to print the grades of a student*/
SET SERVEROUTPUT ON
DECLARE
    sub1 number := '&sub1';
    sub2 number := '&sub2';
    sub3 number := '&sub3';
    sub4 number := '&sub4';
    sub5 number := '&sub5';
    sum number ;
    avg real ;
BEGIN 
    sum := add(sub1,sub2,sub3,sub4,sub5);
    avg := sum/5;
    IF ( avg >= 90 )
        THEN 
            dbms_output.put_line('grade A');
    ELSIF( avg >= 70 AND avg < 90 )
        THEN
            dbms_output.put_line('grade B');
    ELSIF( avg >= 50 AND avg < 70 )
        THEN
            dbms_output.put_line('grade C');
    ELSIF( avg >= 30 AND avg < 50 )
        THEN
            dbms_output.put_line('grade D');
    ELSIF( avg < 30 )
        THEN
            dbms_output.put_line('grade F');
    END IF;
    END IF;
    END IF;
    END IF;
END;
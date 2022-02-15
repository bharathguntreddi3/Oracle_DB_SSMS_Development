/*pl/sql programe to print the grades of a student*/
-- SET SERVEROUTPUT ON
DECLARE
    sub1 number := '&sub1';
    sub2 number := '&sub2';
    sub3 number := '&sub3';
    sub4 number := '&sub4';
    sub5 number := '&sub5';
    sumo number ;
    avrg real ;
BEGIN 
    sumo := add(sub1,sub2,sub3,sub4,sub5);
    avrg := sumo/5;
    IF ( avrg >= 90 )
        THEN 
            dbms_output.put_line('grade A');
    ELSIF( avrg >= 70 AND avrg < 90 )
        THEN
            dbms_output.put_line('grade B');
    ELSIF( avrg >= 50 AND avrg < 70 )
        THEN
            dbms_output.put_line('grade C');
    ELSIF( avrg >= 30 AND avrg < 50 )
        THEN
            dbms_output.put_line('grade D');
    ELSIF( avrg < 30 )
        THEN
            dbms_output.put_line('grade F');

    END IF;
END;
/
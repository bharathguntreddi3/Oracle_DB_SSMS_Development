/*pl/sql programe to check prime number*/
SET SERVEROUTPUT ON
declare
    n number := '&n';
    i number := 2;
    flag number := 1;
BEGIN
    for i in 2..n/2
        loop
            if mod(n,i)=0
                then
                    flag:=0;
            END IF;
        END LOOP;
        IF flag=1
            THEN
                dbms_output.put_line('prime');
            ELSE
                dbms_output.put_line('not prime');
        END IF;
end;
/
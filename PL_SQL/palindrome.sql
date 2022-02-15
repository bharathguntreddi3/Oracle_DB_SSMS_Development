/*pl/sql programe to print palindrome*/
-- SET SERVEROUTPUT ON
DECLARE
    n number := '&n';
    m number := n;
    rev number := 0;
    r number;
BEGIN
    WHILE n>0
    LOOP
        r:=mod(n,10);
        rev:=(rev*10)+r;
        n:=trunc(n/10);
    END LOOP;
    IF m=rev
    THEN
        dbms_output.put_line('number is palindrome');
    ELSE
        dbms_output.put_line('number is not palindrome');
    END IF;
END;
/
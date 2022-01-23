/*pl/sql swapping of two numbers without using 3rd variable*/
SET SERVEROUTPUT ON
declare
    a number := '&a';
    b number := '&b';
 begin
    dbms_output.put_line('before swapping:');
    dbms_output.put_line( 'a=' ||a|| ' b=' || b );
    a := a + b;
    b := a - b;
    b := a - b;
    dbms_output.put_line('after swapping:');
    dbms_output.put_line( 'a=' || a || ' b=' ||b ); 
end;
/
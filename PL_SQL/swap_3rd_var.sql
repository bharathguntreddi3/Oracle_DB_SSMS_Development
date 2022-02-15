/*pl/sql swapping of two numbers using 3rd variable*/
-- SET SERVEROUTPUT ON
declare
    a number := '&a';
    b number := '&b';
    temp number;
 
begin
    dbms_output.put_line('before swapping:');
    dbms_output.put_line( 'a=' ||a|| ' b=' || b );
    temp := a;
    a := b;
    b := temp;
    dbms_output.put_line('after swapping:');
    dbms_output.put_line( 'a=' || a || ' b=' ||b ); 
end;
/
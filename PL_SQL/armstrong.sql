/*pl/sql programe to check and print armstrong numbers*/

-- set serveroutput on
DECLARE

	n number := '&n';
    sumo number := 0;
    remi number;
	m number;
    
BEGIN
	m := n;
    while n>0
    loop
            remi := mod(n,10);
            sums := sumo  + (remi * remi * remi);     -- cube(remi);
            n := trunc(n,10);
    end loop;
        dbms_output.put_line(sumo);
    if (m=sums)
    then
        dbms_output.put_line('armstrong');
    else
        dbms_output.put_line('not armstrong');
    end if;
end;
/
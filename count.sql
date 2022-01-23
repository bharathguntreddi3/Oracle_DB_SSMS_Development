CREATE table EMP(
    emp_id varchar(10),
    PRIMARY KEY(emp_1_id),
    emp_name char(15),
    emp_age numeric(3),
    emp_gender numeric(7),
    emp_address varchar(50);
)

/*count the duplicate values in the table*/

SELECT emp_age, count(*)
    FROM EMP
    GROUP by emp_id,emp_name
    having count(*) > 1
    order by count(*) DESC   --count by descending order
    order by count(*) ASC    --count by ascending order

CREATE table EMP_1(
    emp_1_id varchar(10),
    PRIMARY KEY(emp_1_id),
    emp_1_name char(15),
    emp_1_age numeric(3);
)

CREATE table EMP_2(
    emp_1_id varchar(10),
    FORIEGN KEY(emp_2_id),
    FORIEGN KEY(emp_2_id),
    emp_2_name char(15),
    emp_2_age numeric(3);
)

SELECT
    emp_1_id,
    emp_1_name
FROM 
    EMP_1
UNION     --UNION joins two tables
SELECT
    emp_2_id,
    emp_2_name
FROM
    EMP_2
;

/*
SELECT
    emp_1_id,
    emp_1_name
FROM 
    EMP_1
UNION  ALL    --UNION ALL - joins two tables
SELECT
    emp_2_id,
    emp_2_name
FROM
    EMP_2
;
*/

SELECT *
    from EMP_1
INNER JOIN       --INNER JOIN - joins same values of the table
    EMP_2
ON
    EMP_1.emp_1_id = EMP_2.emp_1_id


SELECT *
    from EMP_1
LEFT OUTER JOIN       --'LEFT OUTER JOIN' joins the same values of two tables without disturbing the other values 
    EMP_2             --left table retains the values
ON
    EMP_1.emp_1_id = EMP_2.emp_1_id


SELECT *
    from EMP_1
RIGHT OUTER JOIN       --'RIGHT OUTER JOIN' joins the same values of two tables without disturbing the other values 
    EMP_2             --left table retains the values
ON
    EMP_1.emp_1_id = EMP_2.emp_1_id

SELECT emp_1_name, emp_2_age, EMP_1.emp_1_id
FROM EMP_1
JOIN EMP_2 ON EMP_1.emp_1_-id = EMP_2.emp_1_id

/*we can replace with any character for the given table name  and use them in the join */
SELECT emp_1_name, emp_2_age, E1.emp_1_id
FROM EMP_1 E1
JOIN EMP_2 E2 ON E1.emp_1_-id = E2.emp_1_id


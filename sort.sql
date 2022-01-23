CREATE table employees(
    emp_name char(20),
    emp_id varchar(10),
    emp_age numeric(3),
    emp_salary float(7)   
);

INSERT INTO employees
    values('barn',331,31,28888.94),
          ('hari',332,31,28888.94),
          ('karl',333,35,35888.94),
          ('sasi',334,25,32949.94),
          ('giri',335,37,27864.94);

SELECT *
FROM employees;

SELECT emp_id
FROM employees
ORDER BY emp_salary ASC;

SELECT emp_id
FROM employees
ORDER BY emp_salary DESC;

INSERT INTO employees(emp_gender)   --inserts new columns

SELECT emp_id
FROM employees
ORDER BY emp_salary IS NULL;   --checks whether there is any empty boxes or not

SELECT emp_name, 10 + 2 AS score
FROM employees
ORDER BYemp_name, score;

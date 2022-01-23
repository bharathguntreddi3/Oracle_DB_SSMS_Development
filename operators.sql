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

/*relational operators*/

SELECT emp_name
FROM employees
where emp_salary > 28000;


SELECT emp_name
FROM employees
where emp_salary < 30000;


SELECT emp_name
FROM employees
where emp_salary = 28888.94;


SELECT emp_name
FROM employees
where emp_salary >= 28000;


SELECT emp_name
FROM employees
where emp_salary <= 28000;


SELECT emp_name
FROM employees
where emp_salary != 28888.94;  /* <> sometimes uses this to represent not equal */


SELECT emp_name
FROM employees
where emp_salary 28000 AND 31000;



SELECT emp_id
FROM employees
where emp_name LIKE 'r%'   --filters the id of the names starting with r


SELECT emp_id
FROM employees
where emp_name LIKE '%r'   --filters the id of the names ending with r

SELECT emp_id
FROM employees
where emp_name LIKE 'r%o'   --filter id of the names that start a r and ends with o

SELECT emp_id
FROM employees
where emp_name LIKE '%ra%'   --filters id of the names that has 'ra' in anyb position

SELECT emp_name
FROM employees
where emp_salary = 28888.94 OR emp_salary = 35888.94;

SELECT emp_id
FROM employees
where emp_name NOT karl;





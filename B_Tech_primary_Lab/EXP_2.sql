/*first table employee2*/
CREATE table employee2(
    SSN numeric(10),
    emp_num numeric(10),
    emp_fname varchar(10),
    emp_name varchar(10),
    emp_lname varchar(10),
    emp_address varchar(10),
    emp_gender numeric(10),
    emp_dob date,
    emp_salary numeric(10),
    emp_job varchar(10),
    emp_deptno numeric(5)
);
INSERT INTO employee2 VALUES(123,102,'raj','k','kumar','duvvada1','M','25-7-1996',5000,'clerk',32);
INSERT INTO employee2 VALUES(124,103,'ravi','L','kumar','duvvada2','M','25-7-1996',6000,'manager',33);
INSERT INTO employee2 VALUES(125,104,'kiran','M','kumar','duvvada2','M','5-5-1995',6500,'manager',34);
INSERT INTO employee2 VALUES(126,105,'vani','F','sri','duvvada1','F','3-2-1996',6000,'senior-clerk',35);
INSERT INTO employee2 VALUES(127,106,'ramya','S','sri','duvvada3','M','19-6-1997',3000,'attender',36);


/*second table department*/
CREATE table department(
    dept_no varchar(10),
    dept_name varchar(10),
    dept_location varchar(10)
);
INSERT INTO department VALUES(32,'CSE','vignan1');
INSERT INTO department VALUES(33,'AIDS','vignan');
INSERT INTO department VALUES(34,'CIVIL','vignan1');
INSERT INTO department VALUES(35,'MECH','vignan2');
INSERT INTO department VALUES(36,'EEE','vignan');
INSERT INTO department VALUES(37,'CHEMICAl','vignan4');
INSERT INTO department VALUES(38,'ECE','vignan1');


/*third table projects*/
CREATE table projects(
    dept_no numeric(10),
    project_no numeric(10),
    project_name varchar(10),
    emp_no numeric(10)
);
INSERT INTO projects VALUES(32,125,'healthcare-system',90);
INSERT INTO projects VALUES(33,86,'online-registration',90);
INSERT INTO projects VALUES(34,126,'webapps',90);
INSERT INTO projects VALUES(35,183,'SAP',90);
INSERT INTO projects VALUES(36,128,'UNIX',90);
INSERT INTO projects VALUES(37,180,'WINDOWS',90);

/*1.Find emp_name working in dept_no 34*/
SELECT emp_name 
FROM employee2
WHERE emp_deptno = 34;

/*2.Find emp_name working in dept_no 34 and dept_name instrumentation*/
SELECT emp_name 
FROM employee2, department
WHERE employee2.emp_deptno = 34 AND dept_name = 'instrumentation'

/*3.Find out name of employee who are working under manager*/
SELECT emp_name 
FROM employee2
WHERE emp_job = 'manager';

/*4.Find out name of employee who are working under manager in dept_no 37*/
SELECT emp_name 
FROM employee2
WHERE emp_job = 'manager' AND emp_deptno = 37;

/*5.Find out emp_name who are working under SAP and no of employees are 3*/
Select emp_name 
from employee2, projects 
where project_name='SAP' and p.emp_no= 3;

/*6.Find out all details of employee whose salary is between 3000 and 6500*/
SELECT *
FROM employee2
WHERE emp_salary BETWEEN 3000 AND 6500;

/*7.write a query to display last name of the employee2 where department number is 34 and project name is webapps*/
SELECT  emp_lname
FROM employee2 e, projects p
WHERE e.emp_deptno = 34 AND p.project_name = 'webapps';

/*8.find address of the employee who belongs to department no 35 and location duvvada 2*/
SELECT emp_address
FROM employee2 e, department d
WHERE e.emp_deptno = 35 AND d.dept_location = 'duvvada2';

/*9.find highest salary of the employee*/
SELECT max(emp_salary)
FROM employee2;

/*10.find name of employee who are working in project name windows and department no 38*/
SELECT  emp_name
FROM employee2 e, projects p
WHERE e.emp_deptno = 38 AND p.project_name = 'WINDOWS';

/*11.find out all employee names whose projects sap and no of employee > 183*/
SELECT emp_name 
FROM employee2 e, projects p
WHERE p.project_name = 'SAP' AND e.emp_num > 183;

/*12.display all departments no  who has no of employees 3 in project table*/
SELECT dept_no 
FROM projects
WHERE emp_no = 3;

/*13.find the department location who belongs to department no 35 and ssn is 126 and emp_lname is sri */
SELECT dept_location
FROM employee2 e, department d
WHERE d.dept_no = 35 AND e.SSN = 126 AND e.emp_lname = 'sri';

/*14.find details of employee with dob is 25-7-1996 and lname is kumar and gender is F and ssn is 123*/
SELECT * 
FROM employee2
WHERE emp_dob = '25-7-1996' AND emp_lname = 'kumar' AND emp_gender = 'F' AND SSN = 123;

/*15.find how many records are there in employee name */
SELECT sum(1)
FROM employee2;

/*16.find different jobs of the employee*/
SELECT emp_job 
FROM employee2;

/*17.find average salary of the employee*/
SELECT avg(emp_salary)
FROM employee2;

/*18.find minimum salary of the employee*/
SELECT min(emp_salary)
FROM employee2;

/*19.find info about employee ,who earns more than any other employee in department no 32*/
SELECT * FROM employee2 WHERE emp_salary >
(SELECT emp_salary FROM employee2  WHERE emp_deptno = 32);

/*20.find out name of employee who are working under vignan2 with project name webapps*/
SELECT * FROM employee2 e
JOIN department d ON e.emp_deptno = d.dept_no
JOIN projects p ON d.dept_no = p.dept_no
WHERE d.dept_location = 'vignan2' And p.project_name = 'webapps';

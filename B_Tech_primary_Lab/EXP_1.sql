/*create table employee*/
CREATE TABLE employee(
    emp_no int(10),
    emp_name varchar(10),
    emp_salary int(10),
    emp_address varchar(10),
    emp_gender varchar(5),
    emp_fname varchar(5),
    emp_dob varchar(10),
    emp_credit int(2),
    emp_exp int(2)
);

/*inserting values into table*/
INSERT INTO employee values(1,"ravi",1000,"duvvada","M","kumar","17-5-1990",2,5);
INSERT INTO employee values(2,"raj",2000,"duvvada2","M","kumar2","16-1-1992",2,5);
INSERT INTO employee values(3,"ranga",5000,"kakinada","M","kumar3","2-2-1992",2,4);
INSERT INTO employee values(4,"kisore",6000,"vijayawada","M","kumar4","6-2-1990",1,5);
INSERT INTO employee values(5,"rani",5000,"guntur","F","kumar5","2-3-1990",2,4);
INSERT INTO employee values(6,"mahesh",4000,"duvvada2","M","kumar6","16-4-1991",1,4);
INSERT INTO employee values(7,"kiran",5000,"guntur","M","kumar7","2-2-1919",1,4);
INSERT INTO employee values(8,"sunny",4000,"vsp","M","kumar8","2-6-1990",1,3);
INSERT INTO employee values(9,"raj",1000,"duvvada3","M","kumar9","3-2-1990",2,1);
INSERT INTO employee values(10,"suresh",3000,"duvvada","M","babu","5-3-1992",1,2);

/*a query to modify employee salary datatype to 15*/
ALTER table employee
	MODIFY COLUMN emp_salary int(15);

/*
ALTER table employee
    MODIFY emp_salary int(15)*/
	
/*--write a query to update emp_dob where emp_name = "ravi"?  */
UPDATE employee
    SET emp_dob = "16-7-1990"
    WHERE emp_name = "ravi";
    
/*--find emp_fname from employee where name = "raj"*/
SELECT emp_fname
    FROM employee
    WHERE emp_name = "raj";

/*find out the details of the employee whose name is raj*/
SELECT *
    FROM employee
    WHERE emp_name = "raj";

/*find enployee details whose address is duvvada 2*/
SELECT *
    FROM employee
    WHERE emp_address = "duvvada2";

/*find out emp_name whose emp_exp = 4*/
SELECT emp_name
    FROM employee
    WHERE emp_exp = 4;
 
/*find out emp_name whose salary is greater than 4000   */
SELECT emp_name 
    FROM employee 
    where emp_salary > 4000;
    
/*find out emp_name where emp_gender = F*/
SELECT emp_name
    FROm employee
    WHERE emp_gender = "F";
    
/*write a query to find out the emp_name where emp_salary between 2000 to 5000*/
SELECT emp_name 
    FROM employee
    WHERE emp_salary between 2000 and 5000;

/*wriet a query to select employee address is kakinada and employee dender is female*/
SELECT emp_address 
    FROM employee
    WHERE emp_address = "address" and emp_gender = "F";

/*TRUNCACTE table employee*/
TRUNCATE table employee;

    
    
    
    
    
    
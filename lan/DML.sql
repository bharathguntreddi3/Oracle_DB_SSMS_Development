CREATE TABLE employee(
    emp_no number(10),
    emp_name varchar(10),
    emp_salary number(10),
    emp_address varchar(10),
    emp_gender varchar(5),
    emp_fname varchar(5),
    emp_dob varchar(10),
    emp_credit number(2),
    emp_exp number(2)
);

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

    
UPDATE employee
    SET emp_dob = "16-7-1990"
    WHERE emp_name = "ravi";
    

SELECT emp_fname
    FROM employee
    WHERE emp_name = "raj";
    
SELECT *
    FROM employee
    WHERE emp_name = "raj";

SELECT *
    FROM employee
    WHERE emp_address = "duvvada2";
    



    

    
    
    
    
    
    
    
    
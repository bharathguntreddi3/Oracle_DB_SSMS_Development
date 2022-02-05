CREATE TABLE employee(
    e_num number(10),
    e_name varchar(10),
    e_job varchar(10),
    mgr number(10),
    d_num number(10)
);

INSERT INTO employee VALUES(111, 'smith', 'manager', 128, 10);
INSERT INTO employee VALUES(222, 'sagar', 'clerk', 129, 20);
INSERT INTO employee VALUES(333, 'sachin', 'analyst', 130, 10);
INSERT INTO employee VALUES(444, 'sudha', 'manager', 131, 40);
CREATE TABLE department (
    d_num number(10),
    d_name varchar(10),
    d_location varchra(10)
);

INSERT INTO department VALUES(10, 'aids', 'hyberabad');
INSERT INTO department VALUES(20, 'cse', 'vsp');
INSERT INTO department VALUES(30, 'mech', 'chennai');


/*1.query to join employee and department using natural join*/
SELECT * FROM employee NATURAL JOIN department;

/*2.query to join employee and department using ineer join*/
SELECT * FROM employee INNER JOIN department using(d_num);

/*3.query to join employee and department using left outer join*/
SELECT * FROM employee e LEFT OUTER JOIN department d ON e.d_num = d.d_num;

/*3.query to join employee and department using right outer join*/
SELECT * FROM employee e RIGHT OUTER JOIN department d ON e.d_num = d.d_num;

/*4.query to join employee and department using full outer join*/
SELECT * FROM employee e FUll OUTER JOIN department d ON e.d_num = d.d_num;

/*5.query to join employee and department using cross join*/
SELECT * FROM employee e CROSS JOIN department d ;


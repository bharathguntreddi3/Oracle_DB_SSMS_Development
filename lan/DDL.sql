
--DATABASE TO STORE STUDENTS DETAILS

CREATE table students(
    student_id varchar(10) NOT NULL,
    PRIMARY KEY(student_id),
    student_name char(20) NOT NULL,
    student_gender char(7) NOT NULL,
    student_age numeric(3) NOT NULL,
    student_phone numeric(10) NOT NULL,
    UNIQUE(student_address),
    student_address varchar(50) NOT NULL
);
 

INSERT INTO students   --add values to the table
values
    (5406,'tejeswar','male',19,36475900166,'KANCHARAPALEM'),
    (5424,'chanukhya','male',19,1117779640,'NAD'),
    (5437,'dharma','male',19,6574005578,'STBL'),
    (5438,'lokeswar','male',19,6666745639,'CHINNAMUSHIDIVADA'),
    (5461,'trushit','male',19,5688123456,'GAJUWAKA'),
    (5429,'bharath','male',19,5688745639,'MVP');

SELECT *   --display the table
    FROM students

/*DDL-Data Definition Language*/

TRUNCATE table students  --removes only data from table

/*
DROP table students    --drops or delete the whole table from database
*/

ALTER table students
     ADD(students_grade char(1)),   --add a column
     DROP COLUMN students_grade,    --delete a column
     MODIFY student_address(70),    --modify the size of the columns
     rename to students_list;       --rename the database

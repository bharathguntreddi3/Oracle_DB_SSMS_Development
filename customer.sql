
--SAMPLE TABLE FOR THE ANALYSIS 

CREATE TABLE customer(
    id numeric(10) NOT NULL,
    fname varchar(15) NOT NULL,
    lname varchar(15) NOT NULL,
    phone numeric(10) NULL,
    address VARCHAR2(20),
    city char(10),
    gender numeric(3)
);

INSERT INTO customer VALUES(1,"kom","kilbread",2357495987,"143-persian","col","M");
INSERT INTO customer VALUES(2,"chun","smithkill",4567289457,"karnan-5/3","ny","M");
INSERT INTO customer VALUES(3,"goda","elizabeth",3456789241,"2-3-10-quill","cal","F");
INSERT INTO customer VALUES(4,"grul","blackpearl",74892547209,"6-256-arch","nj","F");
INSERT INTO customer VALUES(5,"melk","thunder",6478902678,"246-7-98-venesia","va","F");
INSERT INTO customer VALUES(6,"ducy","coulson",1234567890,"98-dawnjo","co","M");


SELECT *
FROM customer
WHERE fname LIKE '%h'    --type characters with % in LIKE 
WHERE lname REGEXP 'under'  --only type out the characters in REGEXP
/*REGEXP is regular expression it is ame as like the LIKE operator and its functions are also same */


SELECT *
FROM customer
WHERE phone REGEXP '^3'    -- ^ indicates the begining of a string 
      AND
      phone REGEXP '8$'    -- $ insicates tghe ending of a string 



SELECT *
FROM customer
WHERE lname LIKE 'th|under|coul|bread'    -- | to find the multiple rows %

SELECT *
FROM customer
WHERE lname LIKE '^th|under$|coul|bread' 

ELECT *
FROM customer
WHERE lname LIKE '[lrbu]l'    -- [char] shows the charcaters with having ll or rl or bl or ul

SELECT *
FROM customer
WHERE lname LIKE 'l[lrbu]'      --after l

SELECT *
FROM customer
WHERE lname LIKE 'l[lrbu]'


SELECT *
FROM customer
WHERE lname LIKE '[a-g]l'   --prints from a to g before l with l range 


-- ^ beggining
-- $ end
-- | logical OR
-- [abcd] 
-- [a-h] range 



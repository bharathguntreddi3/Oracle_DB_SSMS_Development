-- creating sailors table
CREATE TABLE sailors(
    s_id number(10),
    s_name varchar(10),
    s_gender varchar(10),
    s_age number(3),
    s_address varchar(10),
    s_phone number(10)
);
-- Inserting sailors data into the sailors table
INSERT INTO sailors VALUES(101, 'ravi', 'M', 28, 'duvvada-1', 328);
INSERT INTO sailors VALUES(102, 'rakesh', 'M', 26, 'duvvada-2', 988);
INSERT INTO sailors VALUES(103, 'mahesh', 'M', 24, 'duvvada-1', 634);
INSERT INTO sailors VALUES(104, 'kiran', 'M', 28, 'duvvada-3', 524);
INSERT INTO sailors VALUES(106, 'kishore', 'M', 23, 'duvvada-2', 125);
INSERT INTO sailors VALUES(108, 'krishna', 'M', 26, 'duvvada-3', 120);

SELECT * FROM sailors;

-- creating reservations table
CREATE TABLE reservations(
    s_id number(10),
    boat_id number(10),
    r_id number(10),
    r_date varchar(10),
    r_type varchar(10),
    r_destination varchar(10),
    r_source varchar(10),
    r_price number(10)
);

-- Inserting values into the reservations table
INSERT INTO reservations VALUES(101, 128, 1234, '06-06-2021','sleeper','chennai','vsp',6000);
INSERT INTO reservations VALUES(102, 130, 1238, '05-03-2021','sleeper','bombay','vsp',8000);
INSERT INTO reservations VALUES(103, 145, 1240, '02-02-2020','sleeper','bombay','chennai',4000);
INSERT INTO reservations VALUES(104, 150, 1248, '01-01-2020','sleeper','bombay','vsp',7000);
INSERT INTO reservations VALUES(105, 400, 1250, '05-08-2019','general','chennai','vsp',8000);

SELECT * FROM reservations;

-- Creating Boats table
CREATE TABLE boats(
    boat_id number(10),
    boat_color varchar(10),
    boat_type varchar(10),
    boat_tonnage number(10)
);

-- Inserting values into the boats table z

SELECT * FROM boats


/*--------------QUERIES-------------------------*/

/*1.query to find the sailor name is mahesh gender is M and phone is 524*/
SELECT * FROM sailors 
    WHERE s_name = 'mahesh' AND s_gender = 'M' AND s_phone = 524;

/*2.Query to find out the different colors in the boats */
SELECT DISTINCT boat_color FROM boats;

/*3.Query to find out sailor name who reserves yellow boat and type is A3 with tonnage 300*/
-- SELECT s_name 
--     FROM sailors s 
--     JOIN reservations r ON s.s_id = r.s_id 
--     JOIN boats b ON r.boat_id = b.bost_id;
--     WHERE boat_color = 'yellow' AND boat_type = 'A3' AND boat_tonnage = 300;

SELECT s_name FROM sailors s, reservations r, boats b
    WHERE s.s_id = r.s_id AND r.boat_id = b.bost_id 
    AND boat_color = 'yellow' AND 
    boat_type = 'A3' AND
    boat_tonnage = 300;

/*4.query to find all reservations id's from reservations table who took type as sleeper and and sours=ce is vsp and price is 7000*/

SELECT r_id 
    FROM reservations 
    WHERE r_type = "sleeper" AND r_source = "vsp"
    AND r_price = 70000;

/*5.Query to find out sailor who reserves yellow boat an date 1st jan 2020*/
-- SELECT s_name
--     FROM sailors s
--     JOIN reservations r ON s.s_id = r.s_id
--     JOIN boats b ON r.boat_id = b.boat_id
--     WHERE boat_color = "yellow" AND r_date = "01-01-2020";

SELECT s_name 
    FROM sailors s, reservations r, boats b 
    WHERE boat_color = "yellow" AND r_date = "01-01-2020";

/*6.Query to find which boat has highest tonnage*/
SELECT max(boat_tonnage) FROM boats

/*7.Query to find who reserves red color boat and price is 700 with distance 6000 */
-- SELECT s_name
--     FROM sailors s
--     JOIN reservations r ON s.s_id = r.s_id 
--     JOIN boats b ON r.boat_id = b.boat_id
--     WHERE boat_color = 'red' AND r_price = 7000;

SELECT s_name 
    FROM sailors s, reservations r,boats b 
    WHERE  s.s_id = r.s_id AND r.boat_id = b.boat_id
    AND boat_color = 'red' AND r_price = 7000;

/*8.Query to find max reservation price */
SELECT max(r_price) FROM reservations;

/*9.Query to find sailor id to destination is bombay*/
-- SELECT s_name
--     FROM sailors s
--     JOIN reservations r ON s.s_id = r.s_id 
--     JOIN boats b ON r.boat_id = b.boat_id
--     WHERE  r_destination = "bombay";

select sname 
    from sailor s,reservation r,boat b 
    where s.sid=r.sid and r.boatid=b.bid 
    and rdestination='bombay';

/*10.Query to find who reserves general and destination is chennai and sailor id is 102*/
-- SELECT s_name
--     FROM sailors s
--     JOIN reservations r ON s.s_id = r.s_id 
--     JOIN boats b ON r.boat_id = b.boat_id
--     WHERE r-destination = 'bombay' AND r-type = 'general';

SELECT s_name 
    FROM sailors s, reservations r, boats b
    WHERE r ON s.s_id = r.s_id AND boats b ON r.boat_id = b.boat_id
    AND r-destination = 'chennai' AND r-type = 'general';

/*11.Query to find who reserves boat with color red and destination bombay*/
-- SELECT s_name
--     FROM sailors s
--     JOIN reservations r ON s.s_id = r.s_id 
--     JOIN boats b ON r.boat_id = b.boat_id
--     WHERE r_destination = 'bombay' AND boat_color = 'red';

SELECT s_name 
    FROM sailors s, reservations r, boats b 
    WHERE r_destination = "bombay" AND boat_color = "red"

/*12.Query to find maximum distance of the reservation*/














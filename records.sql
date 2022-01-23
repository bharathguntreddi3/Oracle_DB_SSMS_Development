
--SAMPLE TABLE FOR THE records 

CREATE TABLE records(
    id numeric(10) NOT NULL,
    fname varchar(15) NOT NULL,
    lname varchar(15) NOT NULL,
    phone numeric(10) NULL,
    address VARCHAR2(20),
    city char(10),
    gender numeric(3)
);

INSERT INTO records VALUES(1,"kom","kilbread",2357495987,"143-persian","col","M");
INSERT INTO records VALUES(2,"chun","smithkill","karnan-5/3","ny","M");
INSERT INTO records VALUES(3,"goda","elizabeth",3456789241,"2-3-10-quill","cal","F");
INSERT INTO records VALUES(4,"grul","blackpearl",74892547209,"6-256-arch","nj","F");
INSERT INTO records VALUES(5,"melk","thunder",6478902678,"va","F");
INSERT INTO records VALUES(6,"ducy","coulson","98-dawnjo","co","M");

SELECT *
FROM records
WHERE phone IS NULL    --searches for cords having null phone number

SELECT *
FROM records
WHERE phone IS NOT NULL   --searches for records having no null values in phone number 

SELECT *
FROM records
WHERE address IS NULL 


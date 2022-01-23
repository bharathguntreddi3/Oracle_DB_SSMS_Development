CREATE TABLE product(
    'product name' varchar(10),
    'unit price' float(6)
);

INSERT INTO product(washing machine, 38000);
INSERT INTO product(fride, 29000);
INSERT INTO product(AC, 36000);
INSERT INTO product(grinder, 5000);
INSERT INTO product(stove, 7000);
INSERT INTO product(microwave, 21000);

SELECT
    'product name',
    'unit price',
    'unit price' * 1.1 AS 'new price',
FROM product;

SELECT *
FROM product
WHERE 'unit price' IN (2900,5000,7000);


SELECT *
FROM product
WHERE 'unit price' NOT IN (2900,5000,7000);


SELECT *
FROM product
WHERE 'unit price' BETWEEN 10000 AND 20000;


SELECT *
FROM product
WHERE 'product name' LIKE 'w%'  --names startig with w


SELECT *
FROM product
WHERE 'product name' LIKE '%a%'  --any number of characters before and after a


SELECT *
FROM product
WHERE 'product name' LIKE '%c'  --names ending with c


SELECT *
FROM product
WHERE 'product name' LIKE '-c'  --c occuring after 1 character

SELECT *
FROM product
LIMIT 3    --return the first three customers


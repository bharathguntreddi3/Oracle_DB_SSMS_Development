/* "use sql_invoicing" from MYSQL tables  */
/*NATURAL JOIN*/
SELECT
	o.order_id,
	c.first_name
FROM order o
NATURAL JOIN  customers c
-- NATURAL JOIN joins tables with common columns 

/*CROSS JOIN*/
SELECT 
	c.first_name AS customers
	p.name AS product 
FROM customers c
CROSS JOIN products
-- to join all columns of the tables 

SELECT 
	sh.name AS shipper
	p.name AS product
FROM shippers sh 
CROSS JOIN products p 
ORDER BY sh.name 
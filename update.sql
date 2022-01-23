/*table data taken from the MYSQL WORKBENCH*/

/*update rows*/
UPDATE invoices
SET payment_total = 10,payment_date = '2019-03-01'
WHERE invoice_id = 1

/*if we entered wrong data*/
UPDATE invoices
SET payment_total = DEFAULT,payment_date = NULL
WHERE invoice_id = 1

UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE invoice_id = 3

/*-------------------------------*/
UPDATE customers
SETg points = points +50
WHERE birth_date < '1990-01-01'

/*update multiple rows */
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE invoice_id IN (3,4)  --change the settings in the MYSQL

/*subqueries in updating rows*/
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE invoice_id= 
	(SELECT client_id 
	 FROM clients 
	 WHERE name = 'Myworks')
	 
	 
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE invoice_id IN
	(SELECT client_id 
	 FROM clients 
	 WHERE state IN ('CA','NY')
	 
	 
/*-------------------------------*/
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE payment_date IS NULL 

/*----------------------------*/
UPDATE orders
SET comments = 'Gold customers'
WHERE customer_id IN (
					SELECT customer_id 
					FROM customers
					WHERE points > 3000 )

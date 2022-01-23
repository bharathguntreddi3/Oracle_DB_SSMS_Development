/* "use sql_hr" from MYSQL tables employees*/
-- use sql_hr
SELECT 
    e.employee_id,
    e.first_name,
    m.first_name AS head
FROM employees e 
LEFT JOIN employees m 
    ON e.reports_to = m.employee_id
    -- USING(customer_id) identical to above 
LEFT JOIN shippers sh 
    ON o.shipper_id = sh.shipper_id 
    -- USING(shipper_id) identical to above
/* USING() is used when we join two tables with same column*/

/*----------------*/
SELECT *
FROM order_items oi 
JOIN order_item_notes oin
    ON oi.order_id = oin.order_id AND oi.product_id = oin.product_id
    -- USING(order_id,product_id)  for multiple columns


/* "use sql_invoicing" from MYSQL tables  */
-- use sql_invoicing
SELECT 
    p.date,
    c.name AS client,
    p.amount,
    pm.name AS payment_method
FROM payments p  
JOIN clients c
    USING (client_id)
JOIN payments_methods pm
    ON p.payment_method = pm.payment_method_id 


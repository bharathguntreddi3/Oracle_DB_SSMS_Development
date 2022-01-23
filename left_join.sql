/*Tables customers,orders,shippers are exported from the MYSQL workbench ---"use sql_store"---*/
-- use sql_store
SELECT
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON  o.shipper_id = sh.shipper_id
ORDER BY c.customer_id


/*Another tables orders,customers,shippers,order_statuses are exported from MYSQL workbench ---"use sql_store"---*/
SELECT 
    o.order_id,
    o.order_date,
    c.first_name,
    sh.name,
    os.name
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
    ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
    ON o.status = os.order_status_id




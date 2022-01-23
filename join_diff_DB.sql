--join multiple databases
SELECT *
FROM sql_invenotry.products
JOIN sql_store.customer_id
ON products.product_id = customers.customer_id

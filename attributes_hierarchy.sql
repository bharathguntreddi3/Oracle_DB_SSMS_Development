 /*attributes_heirarchy*/
pk - primary key 
NN - not known (unknown values)
AI - auto increment (increment by 1 when inserting new data)
default/expression - (if data not specified takes NULL values)
LAST_INSERT_ID() #function in sql that defines the last id 

/*data tables from MYSQL workbench*/
INSERT INTO orders (
	customer_id,
	order_date,
	status
	)
INSERT INTO order_items
VALUES
	(LAST_INSERT_ID(),1,2.465)
	(LAST_INSERT_ID(),2,3.465)
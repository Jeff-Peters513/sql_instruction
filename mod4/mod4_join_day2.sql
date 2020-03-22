SELECT * FROM orders;

-- show all orders details incl. customer name
SELECT name, date, total FROM orders
	Join customer
		on customer.id = orders.customerID;
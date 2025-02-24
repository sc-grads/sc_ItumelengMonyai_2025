--List Products by Price (Ascending)
SELECT * FROM ProductionProducts
ORDER BY list_price ASC;

--List Customers by Last Name (Descending)
SELECT * FROM SalesCustomers
ORDER BY last_name DESC;

--List Orders by Order Date (Newest First)
SELECT * FROM SalesOrders
ORDER BY order_date DESC;

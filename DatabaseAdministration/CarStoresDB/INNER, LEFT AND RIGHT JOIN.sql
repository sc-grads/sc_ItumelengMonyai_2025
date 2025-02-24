USE CarStoresDB;

--INNER JOIN

--Get Customer Orders
SELECT o.order_id, c.first_name, c.last_name, o.order_status
FROM SalesOrders o
INNER JOIN SalesCustomers c ON o.customer_id = c.customer_id;

--Get Staff Members and Their Stores
SELECT s.first_name, s.last_name, st.store_name
FROM SalesStaffs s
INNER JOIN SalesStores st ON s.store_id = st.store_id;

--LEFT JOIN

--Get All Stores and Their Staff
SELECT st.store_name, s.first_name, s.last_name
FROM SalesStores st
LEFT JOIN SalesStaffs s ON st.store_id = s.store_id;

--Get All Products and Their Orders (Even If Not Ordered)
SELECT p.product_name, oi.quantity
FROM ProductionProducts p
LEFT JOIN SalesOrder_items oi ON p.product_id = oi.product_id;

-- RIGHT JOIN

--Get All Staff and Their Stores
SELECT s.first_name, s.last_name, st.store_name
FROM SalesStaffs s
RIGHT JOIN SalesStores st ON st.store_id = s.store_id;

--Get All Orders and Their Products
SELECT o.order_id, p.product_name, oi.quantity
FROM SalesOrders o
RIGHT JOIN SalesOrder_items oi ON o.order_id = oi.order_id
RIGHT JOIN ProductionProducts p ON oi.product_id = p.product_id;

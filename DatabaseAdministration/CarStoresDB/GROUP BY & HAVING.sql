USE CarStoresDB;

--Count Orders Per Store
SELECT store_id, COUNT(order_id) AS OrderCount
FROM SalesOrders
GROUP BY store_id;

--Find Stores with More Than 1 Orders
SELECT store_id, COUNT(order_id) AS OrderCount
FROM SalesOrders
GROUP BY store_id
HAVING COUNT(order_id) > 1;

--Calculate Average Order Quantity Per Product
SELECT product_id, AVG(quantity) AS AvgQuantity
FROM SalesOrder_items
GROUP BY product_id;

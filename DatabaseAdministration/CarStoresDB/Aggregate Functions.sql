USE CarStoresDB;

--Count Total Orders
SELECT 
	COUNT(*) AS TotalOrders
FROM SalesOrders;

--Get Maximum & Minimum Product Price
SELECT 
	MAX(list_price) AS MaxPrice,
	MIN(list_price) AS MinPrice
FROM ProductionProducts;

--Calculate Average Product Price
SELECT 
	AVG(list_price) AS AvgPrice 
FROM ProductionProducts;

--Calculate Total Sales Value
SELECT 
	SUM(quantity * list_price) AS TotalSales 
FROM SalesOrder_items;


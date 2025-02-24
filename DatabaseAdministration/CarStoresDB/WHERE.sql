-- Find Active Staff Members
SELECT * FROM SalesStaffs
WHERE active = 1;

--Find Products Under $30,000
SELECT * FROM ProductionProducts
WHERE list_price <= 30000;

--Find Orders for a Specific Customer
SELECT * FROM SalesOrders
WHERE customer_id = 2;

--Find a phone that hass 111 in betweenn
SELECT * FROM SalesCustomers
WHERE phone LIKE '%111%';

--Find category that starts wit a c
SELECT * FROM ProductionCategories
WHERE category_name LIKE 'S%'

--Find people whose email ends with com
SELECT * FROM SalesStaffs
WHERE email LIKE '%com'

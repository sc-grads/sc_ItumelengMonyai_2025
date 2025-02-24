use CarStoresDB;

UPDATE SalesStores
SET email = 'contactinfo@autogalaxy.com'
WHERE store_id = 1;

UPDATE SalesStaffs
SET active = 0
WHERE staff_id = 2;

UPDATE ProductionProducts
SET list_price = list_price * 1.05;


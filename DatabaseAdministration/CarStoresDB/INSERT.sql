USE CarStoresDB;

-- Insert data into SalesStores
INSERT INTO SalesStores (store_name, phone, email, street, city, state, zip_code)
VALUES 
('Auto Galaxy', '123-456-7890', 'contact@autogalaxy.com', '123 Main St', 'New York', 'NY', '10001'),
('Speed Motors', '234-567-8901', 'info@speedmotors.com', '456 Elm St', 'Los Angeles', 'CA', '90001'),
('Elite Cars', '345-678-9012', 'sales@elitecars.com', '789 Oak St', 'Chicago', 'IL', '60601');

-- Insert data into SalesStaffs
INSERT INTO SalesStaffs (first_name, last_name, email, phone, active, store_id, manager_id)
VALUES
('John', 'Doe', 'jdoe@autogalaxy.com', '123-111-2222', 1, 1, NULL),
('Alice', 'Smith', 'asmith@autogalaxy.com', '123-222-3333', 1, 1, 1),
('Bob', 'Johnson', 'bjohnson@speedmotors.com', '234-111-2222', 1, 2, NULL);

-- Insert data into ProductionCategories
INSERT INTO ProductionCategories (category_name)
VALUES 
('Sedan'),
('SUV'),
('Truck');

-- Insert data into ProductionBrands
INSERT INTO ProductionBrands (brand_name)
VALUES 
('Toyota'),
('Honda'),
('Ford');

-- Insert data into ProductionProducts
INSERT INTO ProductionProducts (product_name, brand_id, category_id, model_year, list_price)
VALUES
('Camry', 1, 1, 2023, 25000.00),
('Civic', 2, 1, 2023, 22000.00),
('F-150', 3, 3, 2024, 35000.00);

-- Insert data into SalesCustomers
INSERT INTO SalesCustomers (first_name, last_name, phone, email, street, city, state, zip_code)
VALUES
('Michael', 'Brown', '555-111-2222', 'michael.brown@email.com', '12 Pine St', 'Houston', 'TX', '77001'),
('Sarah', 'Johnson', '555-222-3333', 'sarah.johnson@email.com', '34 Maple St', 'Miami', 'FL', '33101');

-- Insert data into SalesOrders
INSERT INTO SalesOrders (customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES
(1, 1, '2025-02-01', '2025-02-10', NULL, 1, 1),
(2, 4, '2025-02-05', '2025-02-12', '2025-02-10', 2, 3);

-- Insert data into SalesOrder_items
INSERT INTO SalesOrder_items (order_id, item_id, product_id, quantity, list_price, discount)
VALUES
(1, 1, 1, 2, 25000.00, 0.05),
(2, 1, 3, 1, 35000.00, 0.10);

-- Insert data into ProductionStocks
INSERT INTO ProductionStocks (store_id, product_id, quantity)
VALUES
(1, 1, 5),
(1, 2, 10),
(2, 3, 4);

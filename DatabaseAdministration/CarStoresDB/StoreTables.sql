CREATE DATABASE CarStoresDB;
GO

CREATE TABLE SalesStores (
	store_id INT IDENTITY (1, 1) PRIMARY KEY,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	state VARCHAR (10),
	zip_code VARCHAR (5)
);
GO

CREATE TABLE SalesStaffs (
	staff_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	active tinyint NOT NULL,
	store_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (store_id)
		REFERENCES SalesStores (store_id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (manager_id)
		REFERENCES SalesStaffs (staff_id)
		ON DELETE NO ACTION ON UPDATE NO ACTION
);
GO

CREATE TABLE ProductionCategories (
	category_id INT IDENTITY (1, 1) PRIMARY KEY,
	category_name VARCHAR (255) NOT NULL
);
GO

CREATE TABLE ProductionBrands(
	brand_id INT IDENTITY(1, 1) PRIMARY KEY,
	brand_name VARCHAR (255) NOT NULL
);
GO

CREATE TABLE ProductionProducts(
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	brand_id INT NOT NULL,
	categorY_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY(category_id)
		REFERENCES ProductionCategories (category_id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (brand_id)
		REFERENCES ProductionBrands (brand_id)
		ON DELETE CASCADE ON UPDATE CASCADE
);
GO

CREATE TABLE SalesCustomers (
	customer_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (25) NOT NULL,
	last_name VARCHAR (25) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5)

);
GO

CREATE TABLE SalesOrders (
	order_id INT IDENTITY (1, 1) PRIMARY KEY,
	customer_id INT,
	order_status tinyint NOT NULL,
	-- Order status: 1 = Pending; 2 = Processing; 3 = Rejected; 4 = Completed
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	store_id INT NOT NULL,
	staff_id INT NOT NULL,
	FOREIGN KEY (customer_id) 
        REFERENCES SalesCustomers (customer_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (store_id) 
        REFERENCES SalesStores (store_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (staff_id) 
        REFERENCES SalesStaffs (staff_id) 
        ON DELETE NO ACTION ON UPDATE NO ACTION

);
GO

CREATE TABLE SalesOrder_items(
	order_id INT,
	item_id INT,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	discount DECIMAL (4, 2) NOT NULL DEFAULT 0,
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (order_id) 
        REFERENCES SalesOrders (order_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) 
        REFERENCES ProductionProducts (product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO

CREATE TABLE ProductionStocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id),
	FOREIGN KEY (store_id) 
        REFERENCES SalesStores (store_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (product_id) 
        REFERENCES ProductionProducts (product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);
GO
-- Insert dummy records into production.categories
Use BikeStores;
DECLARE @CategoryId INT = 1
WHILE @CategoryId <= 12000
BEGIN
    INSERT INTO production.categories (category_name)
    VALUES ('Category - ' + CAST(@CategoryId AS NVARCHAR(10)))
    
    SET @CategoryId = @CategoryId + 1
END

-- Insert dummy records into production.brands
DECLARE @BrandId INT = 1
WHILE @BrandId <= 12000
BEGIN
    INSERT INTO production.brands (brand_name)
    VALUES ('Brand - ' + CAST(@BrandId AS NVARCHAR(10)))
    
    SET @BrandId = @BrandId + 1
END

-- Insert dummy records into production.products
DECLARE @ProductId INT = 1
WHILE @ProductId <= 12000
BEGIN
    INSERT INTO production.products (product_name, brand_id, category_id, model_year, list_price)
    VALUES ('Product - ' + CAST(@ProductId AS NVARCHAR(10)), 
            @ProductId % 1000 + 1, -- Brand ID
            @ProductId % 1000 + 1, -- Category ID
            2023, -- Model Year
            RAND() * 1000) -- List Price
    
    SET @ProductId = @ProductId + 1
END

-- Insert dummy records into sales.customers
DECLARE @CustomerId INT = 1
WHILE @CustomerId <= 12000
BEGIN
    INSERT INTO sales.customers (first_name, last_name, phone, email, street, city, state, zip_code)
    VALUES ('Customer - ' + CAST(@CustomerId AS NVARCHAR(10)),
            'Lastname' + CAST(@CustomerId AS NVARCHAR(10)),
            '123-456-7890',
            'customer' + CAST(@CustomerId AS NVARCHAR(10)) + '@example.com',
            'Street' + CAST(@CustomerId AS NVARCHAR(10)),
            'City' + CAST(@CustomerId AS NVARCHAR(10)),
            'State' + CAST(@CustomerId AS NVARCHAR(10)),
            '12345')
    
    SET @CustomerId = @CustomerId + 1
END

-- Insert dummy records into sales.stores
DECLARE @StoreId INT = 1
WHILE @StoreId <= 12000
BEGIN
    INSERT INTO sales.stores (store_name, phone, email, street, city, state, zip_code)
    VALUES ('Store - ' + CAST(@StoreId AS NVARCHAR(10)),
            '123-456-7890',
            'store' + CAST(@StoreId AS NVARCHAR(10)) + '@example.com',
            'Street' + CAST(@StoreId AS NVARCHAR(10)),
            'City' + CAST(@StoreId AS NVARCHAR(10)),
            'State' + CAST(@StoreId AS NVARCHAR(10)),
            '12345')
    
    SET @StoreId = @StoreId + 1
END

-- Insert dummy records into sales.staffs
DECLARE @StaffId INT = 1
WHILE @StaffId <= 12000
BEGIN
    INSERT INTO sales.staffs (first_name, last_name, email, phone, active, store_id, manager_id)
    VALUES ('Staff - ' + CAST(@StaffId AS NVARCHAR(10)),
            'Lastname' + CAST(@StaffId AS NVARCHAR(10)),
            'staff' + CAST(@StaffId AS NVARCHAR(10)) + '@example.com',
            '123-456-7890',
            1, -- Active
            @StaffId % 1000 + 1, -- Store ID
            NULL) -- No manager initially
    
    SET @StaffId = @StaffId + 1
END

-- Insert dummy records into sales.orders
DECLARE @OrderId INT = 1
WHILE @OrderId <= 12000
BEGIN
    INSERT INTO sales.orders (customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
    VALUES (@OrderId % 1000 + 1, -- Customer ID
            @OrderId % 4 + 1, -- Order Status (1 to 4)
            GETDATE(), -- Order Date
            GETDATE(), -- Required Date
            NULL, -- Shipped Date
            @OrderId % 1000 + 1, -- Store ID
            @OrderId % 1000 + 1) -- Staff ID
    
    SET @OrderId = @OrderId + 1
END

-- Insert dummy records into sales.order_items
DECLARE @ItemCounter INT = 1
WHILE @ItemCounter <= 12000
BEGIN
    INSERT INTO sales.order_items (order_id, item_id, product_id, quantity, list_price, discount)
    VALUES (@ItemCounter % 1000 + 1, -- Order ID
            @ItemCounter % 1000 + 1, -- Item ID
            @ItemCounter % 1000 + 1, -- Product ID
            @ItemCounter % 10 + 1, -- Quantity (1 to 10)
            RAND() * 100, -- List Price
            RAND() * 0.2) -- Discount
    
    SET @ItemCounter = @ItemCounter + 1
END

-- Insert dummy records into production.stocks
DECLARE @StockCounter INT = 1
WHILE @StockCounter <= 12000
BEGIN
    INSERT INTO production.stocks (store_id, product_id, quantity)
    VALUES (@StockCounter % 1000 + 1, -- Store ID
            @StockCounter % 1000 + 1, -- Product ID
            @StockCounter % 100 + 1) -- Quantity (1 to 100)
    
    SET @StockCounter = @StockCounter + 1
END

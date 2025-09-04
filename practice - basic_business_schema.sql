USE Business;

-- Table 1: Countries
CREATE TABLE countries (
    code INT PRIMARY KEY,
    cntry_name VARCHAR(255) NOT NULL,
    continent_name VARCHAR(255)
);

-- Table 2: Users
CREATE TABLE users (
    id INT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) CHECK (email LIKE '%_@__%.__%') NOT NULL,
    gender VARCHAR(255),
    date_of_birth VARCHAR(255),
    country_code INT,
    created_at VARCHAR(255),
    FOREIGN KEY (country_code) REFERENCES countries(code)
);

-- Table 3: Merchants
CREATE TABLE merchants (
    id INT PRIMARY KEY,
    merchant_name VARCHAR(255) NOT NULL,
    admin_id INT,
    country_code INT,
    created_at VARCHAR(255),
    FOREIGN KEY (admin_id) REFERENCES users(id),
    FOREIGN KEY (country_code) REFERENCES countries(code)
);


-- Table 4: Orders
CREATE TABLE orders (
    id INT PRIMARY KEY,
    users_id INT,
    order_status VARCHAR(255),
    created_at VARCHAR(255),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

-- Table 5: Products
CREATE TABLE products (
    id INT PRIMARY KEY,
    merchant_id INT,
    prdct_name VARCHAR(255) NOT NULL,
    price INT,
    prdct_status VARCHAR(255) CHECK (prdct_status IN ('A', 'NA')),
    created_at VARCHAR(255),
    FOREIGN KEY (merchant_id) REFERENCES merchants(id)
);

-- Table 6: Order Items
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT CHECK (quantity >= 50),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);



-- Insert dummy data into Countries
INSERT INTO countries (code, cntry_name, continent_name) VALUES
(1, 'srilanka', 'asia'),
(2, 'england', 'eurpope');


-- Insert dummy data into Users
INSERT INTO users (id, full_name, email, gender, date_of_birth, country_code, created_at) VALUES
(1, 'hasan', 'hasan@gmail.com', 'Male', '2001-01-01', 1, GETDATE()),
(2, 'natha', 'natha@gmail.com', 'Female', '2001-02-15', 2, GETDATE());


-- Insert dummy data into Merchants
INSERT INTO merchants (id, merchant_name, admin_id, country_code, created_at) VALUES
(1, 'Merchant1', 1, 1, GETDATE()),
(2, 'Merchant2', 2, 2, GETDATE());

-- Insert dummy data into Orders
INSERT INTO orders (id, users_id, order_status, created_at) VALUES
(1, 1, 'Pending', GETDATE()),
(2, 2, 'Shipped', GETDATE());

-- Insert dummy data into Products
INSERT INTO products (id, merchant_id, prdct_name, price, prdct_status, created_at) VALUES
(1, 1, 'Product1', 10, 'A', GETDATE()),
(2, 2, 'Product2', 20, 'A', GETDATE());

-- Insert dummy data into Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 55),
(2, 2, 60);

-- Trigger to enforce the ban on merchants from India
CREATE TRIGGER check_merchant_country_trigger
ON merchants
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM INSERTED WHERE country_code = (SELECT code FROM countries WHERE cntry_name = 'India'))
    BEGIN
        print 'Merchants from India are banned.';
    END
END;
GO



-- Trigger to enforce the minimum quantity for orders
CREATE TRIGGER check_order_quantity_trigger
ON order_items
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM INSERTED WHERE quantity < 50)
    BEGIN
        print 'Minimum order quantity is 50.';
    END
END;
GO



/*
-- Modify Trigger to allow merchants from India
ALTER TRIGGER check_merchant_country_trigger
ON merchants
AFTER INSERT, UPDATE
AS
BEGIN
    -- Check for merchants from India
    IF EXISTS (SELECT 1 FROM INSERTED WHERE country_code = (SELECT code FROM countries WHERE cntry_name = 'India'))
    BEGIN
        -- You can add additional logic if needed for merchants from India
        -- For example, you might want to log the event or perform some specific action
        PRINT 'Merchants from India are now allowed.';
    END
END;
GO

*/





Use BikeStores;

--Query1
--Reterive all product names  and their corresponding list prices:

/*SELECT product_name, list_price
FROM production.products;*/

---Query2
---List all customers with their orders and order dates:

/*SELECT c.first_name, c.last_name, o.order_id, o.order_date
FROM sales.customers c
JOIN sales.orders o ON c.customer_id = o.customer_id;*/

--Query3
--Find the total quantity of each product in stock

/*SELECT p.product_name, SUM(s.quantity) AS total_quantity
FROM production.products p
JOIN production.stocks s ON p.product_id = s.product_id
GROUP BY p.product_name;*/

--Query4
--Retrieve staff information along with their associated store names:

/*SELECT s.first_name, s.last_name, st.store_name
FROM sales.staffs s
JOIN sales.stores st ON s.store_id = st.store_id;

--Query5
--List the order items with product details for a specific order:

SELECT oi.order_id, oi.item_id, p.product_name, oi.quantity, oi.list_price
FROM sales.order_items oi
JOIN production.products p ON oi.product_id = p.product_id
WHERE oi.order_id = 1; -- Replace 1 with the desired order_id*/

--Query6
--Find the average list price of products in each category:

/*SELECT c.category_name, AVG(p.list_price) AS avg_list_price
FROM production.products p
JOIN production.categories c ON p.category_id = c.category_id
GROUP BY c.category_name;*/

--Query7
--Retrieve the staff members who are managers:

/*SELECT *
FROM sales.staffs
WHERE manager_id IS NOT NULL;*/

--Query8
--List the customers who have placed orders along with the total number of orders:

/*SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS total_orders
FROM sales.customers c
LEFT JOIN sales.orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;*/

--Query9
--Find the total sales amount for each order:

/*SELECT o.order_id, SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS total_sales_amount
FROM sales.orders o
JOIN sales.order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;*/

---Query10
--Retrieve the product with the highest list price:

SELECT TOP 1 *
FROM production.products
ORDER BY list_price DESC;






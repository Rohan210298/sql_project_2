-- Retrieve a list of products with their corresponding suppliers:
SELECT p.productid, p.product_name, s.suppliers_name
FROM products p
JOIN purchases pu ON p.productid = pu.product_id
JOIN suppliers s ON pu.supplier_id = s.suppliers_id;

-- Retrieve all purchases along with the corresponding product and supplier information

SELECT o.orderid, o.title, o.first_name, o.last_name, p.product_name, p.productid, s.suppliers_name, s.suppliers_id
FROM orders o
JOIN products p ON o.productid = p.productid
JOIN suppliers s ON s.suppliers_id = p.productid;

-- Retrieve all products and the total number of items ordered for each product:
SELECT p.productid, p.product_name, SUM(o.numbershipped) AS total_ordered
FROM products p
LEFT JOIN orders o ON p.productid = o.productid
GROUP BY p.productid, p.product_name;

-- Retrieve all purchases along with the corresponding product and supplier information:

SELECT pu.*, p.product_name, s.suppliers_name
FROM purchases pu
JOIN products p ON pu.product_id = p.productid
JOIN suppliers s ON pu.supplier_id = s.suppliers_id;

-- Retrieve all orders along with the corresponding product information:

SELECT o.*, p.product_name
FROM orders o
JOIN products p ON o.productid = p.productid;
 
-- Retrieve all orders made by a specific customer (based on first and last name) along with the corresponding product information:

SELECT o.*, p.product_name
FROM orders o
JOIN products p ON o.productid = p.productid
WHERE o.first_name = 'John' AND o.last_name = 'Doe';

-- Retrieve all products along with the total number ordered and received for each product:

SELECT p.*, SUM(o.numbershipped) AS total_ordered, SUM(pu.order_receive) AS total_received
FROM products p
LEFT JOIN orders o ON p.productid = o.productid
LEFT JOIN purchases pu ON p.productid = pu.product_id
GROUP BY p.productid, p.product_name;

-- Retrieve all suppliers along with the total number of purchases made from each supplier:

SELECT s.*, COUNT(pu.purchases_id) AS total_purchases
FROM suppliers s
LEFT JOIN purchases pu ON s.suppliers_id = pu.supplier_id
GROUP BY s.suppliers_id, s.suppliers_name;



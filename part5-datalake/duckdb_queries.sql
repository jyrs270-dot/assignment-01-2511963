-- Q1:
SELECT c.customer_name, SUM(p.price) AS total_spent
FROM 'customers.csv' c
JOIN 'products.parquet' p
ON c.customer_id = p.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Q2:
SELECT AVG(order_value) AS avg_order_value
FROM 'orders.json';

-- Q3:
CREATE VIEW unified_data AS
SELECT * FROM 'customers.csv'
UNION ALL
SELECT * FROM 'orders.json';
FROM 'customers.csv'
-- Using provided dataset files: customers.csv, orders.json, products.parquet

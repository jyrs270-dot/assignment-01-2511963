-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    date DATE,
    month VARCHAR(20),
    year INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table: Sales
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    store_id INT,
    date_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);

-- Insert into dim_date
INSERT INTO dim_date VALUES
(1, '2024-01-01', 'January', 2024),
(2, '2024-02-01', 'February', 2024),
(3, '2024-03-01', 'March', 2024);

-- Insert into dim_store
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Pune');

-- Insert into dim_product
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Shirt', 'Clothing'),
(3, 'Milk', 'Groceries');

-- Insert into fact_sales (at least 10 rows)
INSERT INTO fact_sales VALUES
(1,1,1,1,1,60000),
(2,2,1,1,2,2000),
(3,3,1,1,3,180),
(4,1,2,2,1,60000),
(5,2,2,2,1,1000),
(6,3,2,2,5,300),
(7,1,3,3,2,120000),
(8,2,3,3,3,3000),
(9,3,3,3,4,240),
(10,1,1,2,1,60000);

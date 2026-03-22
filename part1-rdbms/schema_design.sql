-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    rep_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_reps(rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers VALUES
(1, 'Jatin', 'Mumbai'),
(2, 'Rahul', 'Delhi'),
(3, 'Amit', 'Mumbai'),
(4, 'Neha', 'Pune'),
(5, 'Simran', 'Mumbai');

-- Insert Products
INSERT INTO products VALUES
(1, 'Laptop', 60000),
(2, 'Phone', 30000),
(3, 'Tablet', 20000),
(4, 'Headphones', 2000),
(5, 'Charger', 1000);

-- Insert Sales Reps
INSERT INTO sales_reps VALUES
(1, 'Raj'),
(2, 'Priya'),
(3, 'Aman'),
(4, 'Sneha'),
(5, 'Vikas');

-- Insert Orders
INSERT INTO orders VALUES
(1, 1, 1, '2024-01-01'),
(2, 2, 2, '2024-01-02'),
(3, 3, 3, '2024-01-03'),
(4, 4, 4, '2024-01-04'),
(5, 5, 5, '2024-01-05');

-- Insert Order Items
INSERT INTO order_items VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 1),
(4, 4, 4, 3),
(5, 5, 5, 4);

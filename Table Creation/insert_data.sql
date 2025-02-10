-- Insert data into the products table
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Laptop', 999.99, 15),
('Smartphone', 499.99, 20),
('Headphones', 79.99, 50),
('Monitor', 199.99, 15),
('Keyboard', 49.99, 30);

-- Insert data into the customers table
INSERT INTO customers (first_name, last_name, email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Alice', 'Johnson', 'alice.johnson@example.com'),
('Bob', 'Brown', 'bob.brown@example.com');

-- Insert data into the orders table
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-01-10'),
(2, '2024-01-11'),
(3, '2024-01-12'),
(4, '2024-01-13'),
(1, '2024-01-14');

-- Insert data into the order_items table
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(2, 4, 1),
(3, 1, 1),
(3, 5, 1),
(4, 3, 1),
(4, 4, 1),
(5, 2, 1),
(5, 5, 2);
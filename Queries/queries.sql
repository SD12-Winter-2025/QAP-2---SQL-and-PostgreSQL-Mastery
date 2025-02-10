-- Retrieve the names and stock quantities of all products
SELECT product_name, stock_quantity
FROM products;

-- Retrieve the product names and quantities for one of the orders placed
WITH order_details AS (
    SELECT product_id, quantity
    FROM order_items
    WHERE order_id = 1
)
SELECT products.product_name, order_details.quantity
FROM products
JOIN order_details ON products.id = order_details.product_id;

-- Retrieve all orders placed by a specific customer (including the IDs of what was ordered and the quantities)
WITH customer_orders AS (
    SELECT id AS order_id, order_date
    FROM orders
    WHERE customer_id = 1
),
order_items_details AS (
    SELECT order_id, product_id, quantity
    FROM order_items
    WHERE order_id IN (SELECT order_id FROM customer_orders)
)
SELECT customer_orders.order_id, customer_orders.order_date, order_items_details.product_id, order_items_details.quantity
FROM customer_orders
JOIN order_items_details ON customer_orders.order_id = order_items_details.order_id;
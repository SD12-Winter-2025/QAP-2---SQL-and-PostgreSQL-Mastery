-- Retrieve all orders placed by a specific customer (including the IDs of what was ordered and the quantities)


-- Step 1: Select all orders placed by a specific customer
WITH customer_orders AS (
    SELECT id AS order_id, order_date
    FROM orders
    WHERE customer_id = 1
),

-- Step 2: Select the order items for these orders
order_items_details AS (
    SELECT order_id, product_id, quantity
    FROM order_items
    WHERE order_id IN (SELECT order_id FROM customer_orders)
)

-- Final Step: Join the customer orders with the order items to get the details
SELECT customer_orders.order_id, customer_orders.order_date, order_items_details.product_id, order_items_details.quantity
FROM customer_orders
JOIN order_items_details ON customer_orders.order_id = order_items_details.order_id;
-- Retrieve the product names and quantities for one of the orders placed

-- Step 1: Select the order details for a specific order
WITH order_details AS (
    SELECT product_id, quantity
    FROM order_items
    WHERE order_id = 1
)

-- Step 2: Join the order details with the products table to get product names
SELECT products.product_name, order_details.quantity
FROM products
JOIN order_details ON products.id = order_details.product_id;
-- Retrieve the names and stock quantities of all products

--Step method
-- Step 1: Select all products
WITH all_products AS (
    SELECT id, product_name, stock_quantity
    FROM products
)

-- Step 2: Select the product names and stock quantities
SELECT product_name, stock_quantity
FROM all_products;



--Simplified view
SELECT product_name, stock_quantity
FROM products;



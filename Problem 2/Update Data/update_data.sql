-- Simulate reducing stock quantities of items after a customer places an order
-- Let's simulate the reduction for order_id = 1
UPDATE products
SET stock_quantity = stock_quantity - order_items.quantity
FROM order_items
WHERE products.id = order_items.product_id AND order_items.order_id = 1;
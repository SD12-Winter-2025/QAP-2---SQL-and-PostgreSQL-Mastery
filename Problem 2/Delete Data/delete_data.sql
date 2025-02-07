-- Remove one of the orders and all associated order items from the system
-- Let's remove order_id = 1
DELETE FROM order_items
WHERE order_id = 1;

DELETE FROM orders
WHERE id = 1;
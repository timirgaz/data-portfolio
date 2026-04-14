-- Project: E-commerce Data Analysis
-- Goal: Analyze customer behavior and revenue using SQL
-- Top 10 customers by total orders
SELECT customer_id, COUNT(*) as total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;

-- Total revenue by customer
SELECT customer_id, SUM(amount) as total_revenue
FROM orders
GROUP BY customer_id
ORDER BY total_revenue DESC;

-- Average order value
SELECT AVG(amount) as avg_order_value
FROM orders;

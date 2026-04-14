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

SELECT 
	c.customer_id,
	c.first_name, 
	c.last_name,
	c.email,
	COUNT(*) AS payment_count,
	SUM(p.amount) AS total_revenue
FROM payment p
JOIN customer c ON 
c.customer_id = p.customer_id
GROUP BY c.customer_id,c.first_name,c.last_name,c.email
ORDER BY total_revenue DESC
LIMIT 10;
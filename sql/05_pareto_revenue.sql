WITH revenue_per_customer AS(
SELECT 
	customer_id AS customer_id,
	SUM(amount) AS customer_revenue
FROM payment 
GROUP BY customer_id
), bucketed AS (
SELECT 
	customer_id, 
	customer_revenue,
	NTILE(5) OVER (ORDER BY customer_revenue DESC) AS  revenue_bucket
FROM revenue_per_customer
)
SELECT 
	SUM(CASE WHEN revenue_bucket = 1 THEN customer_revenue ELSE 0 END) AS top_20pct_revenue,
	SUM(customer_revenue) AS total_revenue,
	round(SUM(CASE WHEN revenue_bucket = 1 THEN customer_revenue ELSE 0 END)* 100.0/ SUM(customer_revenue),2) AS pct_revenue_from_top_20pct
FROM bucketed;
		
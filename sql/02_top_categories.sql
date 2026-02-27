SELECT  
	c.name AS category_name,
	COUNT(DISTINCT r.rental_id) AS rental_count,
	SUM(p.amount) AS total_revenue,
	round(SUM(p.amount)/COUNT(distinct r.rental_id) ,2) AS avg_rental_revenue
FROM payment p 
JOIN rental r USING(rental_id)
JOIN inventory i USING(inventory_id)
JOIN film f USING(film_id)
JOIN film_category fc USING(film_id)
JOIN category c USING(category_id)
GROUP BY c.name
ORDER BY total_revenue DESC;



	
	
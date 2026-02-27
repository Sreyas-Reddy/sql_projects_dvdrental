SELECT 
	f.film_id,
	f.title,
	NULLIF(COUNT(i.inventory_id),0) AS inventory_copies,
	COUNT(r.rental_id) AS rental_count,
	round(COUNT(rental_id)::numeric / COUNT(inventory_id),2) AS rentals_per_copy
FROM inventory i 
LEFT JOIN rental r USING(inventory_id)
JOIN film f USING(film_id)
GROUP BY f.film_id,f.title
ORDER BY rentals_per_copy ASC, inventory_copies DESC;




SELECT
 c.name,
 p.amount
FROM staging.category c
LEFT JOIN staging.film_category fc ON c.category_id = fc.category_id
LEFT JOIN staging.film f ON fc.film_id = f.film_id
LEFT JOIN staging.inventory i ON f.film_id = i.film_id
LEFT JOIN staging.rental r ON i.inventory_id = r.inventory_id
LEFT JOIN staging.payment p ON r.rental_id = p.rental_id;
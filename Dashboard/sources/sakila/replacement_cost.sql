SELECT 
s.address_id,
f.replacement_cost
FROM staging.store s
LEFT JOIN staging.inventory i ON s.store_id = i.store_id
LEFT JOIN staging.film f ON i.film_id = f.film_id;
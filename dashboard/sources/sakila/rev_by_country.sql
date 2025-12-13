SELECT 
 co.country,
 p.amount
FROM staging.country co
LEFT JOIN staging.city ci ON ci.country_id = co.country_id
LEFT JOIN staging.address a ON a.city_id = ci.city_id
LEFT JOIN staging.customer cu ON cu.address_id = a.address_id
LEFT JOIN staging.payment p ON p.customer_id = cu.customer_id;
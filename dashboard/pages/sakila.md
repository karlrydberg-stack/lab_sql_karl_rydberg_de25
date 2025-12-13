# Economic Report of the Sakila Corporation

## The Insurance company has requested data on the total replacement cost of the movies in each store

```sql sum_replacement_cost
SELECT
 address_id,
 SUM(replacement_cost) AS SEK
FROM sakila.sum_replacement_cost
GROUP BY address_id;
```

## The head of business development wants data on total movie sales, by country, for future expansion, and a related graph
```sql revenue_by_country
SELECT
 country,
 SUM(amount) AS amount
FROM sakila.rev_by_country
GROUP BY country
ORDER BY amount DESC
LIMIT 5;
```

<BarChart
    data={revenue_by_country}
    title="Graph on top 5 highest sales, by country"
    x=country
    y=amount
/>

## The store admin has found a discrepancy between the number of films in the official film list and the inventory. Which are they?
```sql missing_movies
SELECT film_id FROM sakila.film
EXCEPT
SELECT film_id FROM sakila.inventory
ORDER BY film_id;
```
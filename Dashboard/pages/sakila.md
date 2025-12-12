# Economic Report of the Sakila Corporation

```sql ddd
SELECT 
                                address_id,
                                 sum(replacement_cost)
                                FROM sakila.replacement_cost
                                
                                GROUP BY address_id
```

<BarChart
data={ddd}
title="rd"
x=address_id
y=sum(replacement_cost)
/>
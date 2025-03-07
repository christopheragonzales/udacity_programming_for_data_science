SELECT t1.actor_id
     , t1.full_name
     , COUNT(title) AS film_count_per_actor
FROM (
  SELECT a.actor_id
       , a.first_name
       , a.last_name
       , CONCAT(a.first_name, ' ', a.last_name) AS full_name
       , f.title
  FROM actor a
    JOIN film_actor fa ON a.actor_id = fa.actor_id
    JOIN film f ON fa.film_id = f.film_id
) t1
GROUP BY actor_id
       , full_name
ORDER BY COUNT(title) DESC;
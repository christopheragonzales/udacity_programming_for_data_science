SELECT a.actor_id
       , a.first_name
       , a.last_name
       , CONCAT(a.first_name, ' ', a.last_name) AS full_name
       , f.film_id
       , f.title
       , f.description
       , f."length"
  FROM actor AS a
  JOIN film_actor AS fa
    ON a.actor_id = fa.actor_id
  JOIN film AS f
    ON fa.film_id = f.film_id
WITH BASE_TABLE AS
(
  SELECT fa.actor_id
       , fa.film_id
       , CONCAT(a.first_name, ' ', a.last_name) AS actor_name
       , title film_title
       , CAST(f."length" AS INT) AS film_length
  FROM film_actor fa
    JOIN actor a ON fa.actor_id = a.actor_id
    JOIN film f ON fa.film_id = f.film_id
),

FILMLEN_GROUPS AS
(
  SELECT actor_name
       , film_title
       , film_length
       , CASE
           WHEN film_length <= 60 THEN '1 hour or less'
           WHEN film_length BETWEEN 60 AND 120 THEN 'Between 1 and 2 hours'
           WHEN film_length BETWEEN 120 AND 180 THEN 'Between 2 and 3 hours'
           WHEN film_length > 180 THEN 'More than 3 hours'
           ELSE NULL
         END AS "filmlen_groups"
  FROM BASE_TABLE
)

SELECT DISTINCT filmlen_groups
              , COUNT(film_title) OVER (PARTITION BY filmlen_groups) AS film_count_by_length
FROM FILMLEN_GROUPS
GROUP BY FILMLEN_GROUPS
       , film_title
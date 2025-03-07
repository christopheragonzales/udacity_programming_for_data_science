SELECT f.title film_title
     , c.name genre
     , f.rental_duration
     , NTILE(4) OVER (ORDER BY rental_duration) AS standard_quartile
FROM film_category fa
  JOIN film f ON fa.film_id = f.film_id
  JOIN category c ON fa.category_id = c.category_id
WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')

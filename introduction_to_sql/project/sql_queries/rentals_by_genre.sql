SELECT t1.film_title
     , t1.genre
     , COUNT(t2.rental_id) rental_count
FROM (
  SELECT fc.film_id
       , fc.category_id
       , f.title film_title
       , c.name genre
  FROM film_category fc
    JOIN film f ON fc.film_id = f.film_id
    JOIN category c ON fc.category_id = c.category_id
  WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
) t1
  JOIN (
    SELECT i.inventory_id
         , i.film_id
         , r.rental_id
    FROM inventory i
      JOIN rental r ON i.inventory_id = r.inventory_id
  ) t2 ON t2.film_id = t1.film_id
GROUP BY t1.film_title
       , t1.genre
ORDER BY 2
       , 1 ASC
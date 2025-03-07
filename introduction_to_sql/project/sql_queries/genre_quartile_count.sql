SELECT t1.genre
       , t1.standard_quartile
       , COUNT(*)
  FROM (SELECT fa.category_id
               , fa.film_id
               , f.title film_title
               , c.name genre
               , f.rental_duration
               , NTILE(4) OVER (ORDER BY f.rental_duration) AS standard_quartile
          FROM film_category fa
          JOIN film f
            ON fa.film_id = f.film_id
          JOIN category c
            ON fa.category_id = c.category_id
         WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
    ) t1
 GROUP BY t1.standard_quartile
         , t1.genre
 ORDER BY 1
        , 2
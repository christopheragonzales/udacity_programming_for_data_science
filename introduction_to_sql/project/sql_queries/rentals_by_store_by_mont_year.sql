WITH RENTAL_DATA AS
(
  SELECT rental_id
       , DATE_PART('MONTH', rental_date) "month"
       , DATE_PART('YEAR', rental_date) "year"
       , staff_id
  FROM rental r
),

STAFF_DATA AS
(
  SELECT r.*
       , store_id
  FROM RENTAL_DATA r
    JOIN staff s ON r.staff_id = s.staff_id
)

SELECT "month"
     , "year"
     , store_id
     , COUNT(rental_id) "rentals"
FROM STAFF_DATA
GROUP BY "month"
       , "year"
       , store_id
ORDER BY "year"
       , "month"
       , store_id;
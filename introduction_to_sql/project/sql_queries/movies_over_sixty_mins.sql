SELECT "a"."actor_id"
       , CONCAT("a"."first_name", ' ', "a"."last_name") AS full_name
       , "fa"."film_id"
       , "f"."length"
  FROM actor "a"
  JOIN film_actor "fa"
    ON "a"."actor_id" = "fa"."actor_id"
  JOIN film "f"
    ON "fa"."film_id" = "f"."film_id"
 WHERE "f"."length" > 60;
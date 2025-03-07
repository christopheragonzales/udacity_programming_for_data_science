  SELECT DATE_PART('month', occurred_at) AS month
       , DATE_PART('year', occurred_at) AS year
       , AVG(standard_qty) AS avg_standard_qty
       , AVG(gloss_qty) AS avg_gloss_qty
       , AVG(poster_qty) AS avg_poster_qty
       , SUM(total_amt_usd) AS total_amt_usd
    FROM orders
   WHERE DATE_TRUNC('month', occurred_at) = (
  SELECT DATE_TRUNC('month', MIN(occurred_at)) AS min_month 
    FROM orders
)
     AND DATE_TRUNC('year', occurred_at) = (
  SELECT DATE_TRUNC('year', MIN(occurred_at)) AS min_year
    FROM orders
)
GROUP BY 1, 2

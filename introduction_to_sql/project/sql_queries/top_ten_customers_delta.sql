WITH PAYMENT_DATA AS
(
  SELECT DATE_TRUNC('month', p.payment_date) AS pay_mon
       , CONCAT(c.first_name, ' ', c.last_name) AS fullname
       , p.amount
  FROM payment p
    JOIN customer c ON p.customer_id = c.customer_id
  WHERE DATE_PART('year', p.payment_date) = 2007
),

TOP_10_CUST AS (
  SELECT pay_mon
       , fullname
       , COUNT(fullname) AS num_payments
       , SUM(amount) AS total_payment
  FROM PAYMENT_DATA
  WHERE fullname IN (
        SELECT fullname 
        FROM PAYMENT_DATA 
        GROUP BY fullname 
        ORDER BY SUM(amount) DESC 
        LIMIT 10
        )
  GROUP BY pay_mon
         , fullname
)

SELECT *
       , total_payment - LAG(total_payment, 1) OVER (PARTITION BY fullname ORDER BY pay_mon) AS delta_payment
FROM TOP_10_CUST
ORDER BY 2
        , 1
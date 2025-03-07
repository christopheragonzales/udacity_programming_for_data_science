SELECT  account_id,
        standard_sum,
        LEAD(standard_sum) OVER (ORDER BY standard_sum) AS lead,
        LEAD(standard_sum) OVER(ORDER BY standard_sum) - standard_sum AS lead_difference
FROM    (
         SELECT   account_id,
                  SUM(standard_qty) AS standard_sum
         FROM     orders
         GROUP BY 1
    ) AS subquery
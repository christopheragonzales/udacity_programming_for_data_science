SELECT 
    occurred_at,
    SUM(total_amt_usd) OVER (ORDER BY occurred_at) AS running_total
FROM 
    orders;

SELECT
    standard_amt_usd,
    DATE_TRUNC('YEAR', occurred_at) AS year,
    SUM(total_amt_usd) OVER (PARTITION BY DATE_TRUNC('YEAR', occurred_at) ORDER BY occurred_at) AS yearly_running_total
FROM
    orders
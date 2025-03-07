SELECT
    id,
    account_id,
    total,
    RANK() OVER(PARTITION BY account_id ORDER BY total DESC) AS rank
FROM
    orders
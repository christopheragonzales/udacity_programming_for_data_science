--    SELECT r.id
--         , r.name as region
--         , s.name as sales_representative
--         , a.name as account_name
--      FROM region as r
--      JOIN sales_reps as s
--        ON r.id = s.region_id
--      JOIN accounts as a
--        ON s.id = a.sales_rep_id
--     WHERE r.name = 'Midwest'
--       AND s.name LIKE '%S%'
--  ORDER BY a.name;

SELECT r.name as region
     , s.name as sale_representative
     , a.name as account_name
  FROM region as r
  JOIN sales_reps as s
    ON r.id = s.region_id
  JOIN accounts as a
    ON s.id = a.sales_rep_id
 WHERE r.name = 'Midwest'
    AND s.name LIKE '% K%'

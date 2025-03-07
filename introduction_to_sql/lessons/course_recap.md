# SQL Recap

## Commands

| **STATEMENT** | **HOW TO USE IT** | **OTHER DETAILS** |
|:--------------|:------------------|:------------------|
| **SELECT**    | SELECT **Col1, Col2, ...** | Provide the columns you want |
| **FROM**      | FROM **Table**             | Provide the table where the columns exist |
| **LIMIT**     | LIMIT **10**               | Limits based number of rows returned |
| **ORDER BY**  | ORDER BY **Col**           | Orders table based on the column. Used with **DESC** |
| **WHERE**     | WHERE **Col > 5**          | A conditional statement to filter your results |
| **LIKE**      | WHERE **Col LIKE '%me%'**  | Only pulls the rows where column has 'me' within the text. |
| **IN**        | WHERE **Col IN ('Y', 'N')**| A filter for only rows with column of 'Y' or 'N' |
| **NOT**       | WHERE **Col NOT IN ('Y', 'N')** | **NOT** is frequently used with **LIKE** and **IN** |
| **AND**       | WHERE **Col1 > 5 AND Col2 < 3** | Filter rows where two or more conditions must be true |
| **OR**        | WHERE **Col > 5 OR Col2 < 3** | Filter rows where at least one condition must be true |
| **BETWEEN**   | WHERE **Col BETWEEN 3 AND 5** | Often easier syntax than using an AND |

## Key Terms

| **Key Term** | **Definition** |
|:-------------|:---------------|
| **CREATE TABLE** | Is a statement that creates a new table in a database |
| **DROP TABLE** | Is a statement that removes a table in a database |
| **Entity-Relationship Diagram (ERD)** | A common way to view data in a database |
| **FROM** | Specifies from which table(s) you want to select the columns. Notice the columns need to exist in this table. |
| **SELECT** | Allows you to read data and display it. This is called a query and it specifies from which table(s) you want to select the columns |
| **Foreign Key (FK)** | Is a column in one table that is a primary key in a different table |
| **JOIN** | Is an INNER JOIN that only pulls data that exists in both tables |
| **LEFT JOIN** | Is a JOIN that pulls all the data that exists in both tables as well as all the rows from the table in the FROM even if they do not exist in the JOIN statement |
| **PARTITION BY** | A subclause of the OVER clause. Similar to a GROUP BY |
| **Primary Key (PK)** | Is a unique column in a particular table |
| **RIGHT JOIN** | Is a JOIN that pulls all the data that exists in both tables as well as all of the rows from the table in the JOIN even if they do not exist in the FROM statement |
| **DISTINCT** | Always used in SELECT statements and it provides the unique rows for all columns written in the SELECT statement |
| **GROUP BY** | Used to aggregate data within subsets of the data. For example, grouping for different accounts, different regions, or different sales representatives |
| **HAVING** | Is the "clean" way to filter a query that has been aggregated |
| **NULL** | A datatype that specifies where no data exists in SQL |
| **Correlated Subquery** | The inner subquery is dependent on the larger query |
| **CTE** | Common Table Expression in SQL allows you to define a temporary result, such as a table, to the be referenced in a later part of the query |
| **Inline Subquery** | This subquery is used in the same fashion as the WITH use case above. However, instead of the temporary table sitting on top of the larger query, it is embedded within the **FROM** clause |
| **Nested Subquery** | This subquery is used when you'd like the temporary table to act as a filter within the larger query, which implies that it often sits within the **WHERE** clause |
| **Scalar Subquery** | This subquery is used when you'd like to generate a scalar value to be used as a benchmark of some sort |
| **Simple Subquery** | The inner subquery is completely independent of the larger query |
| **SQL View**| Virtual tables that are derived from one or more base tables. The term virtual means that the views do not exist physically in a database. Instead, they reside in the memory (not database), just like the result of any query stored in memory |
| **Subquery** | A SQL query qhere one SQL query is nested within another query |
| **WITH Subquery** | This subquery is used when you'd like to "pseudo-create" a table from an existing table and visually scope the temporary table at the top of the larger query |
| **CAST** | Converts a value of any type into a specific, different type |
| **COALESCE** | Returns the first non-null value in a list |
| **CONCAT** | Adds two or more expressions together |
| **LEFT** | Extracts a number of characters from a string starting from the left |
| **POSITION** | Returns the position of the first occurrence of a substring in a string |
| **RIGHT** | Extracts a number of characters from a string starting from the right |
| **STRPOS** | Returns the position of a substring within a string |
| **SUBSTR** | Extracts a substring from a string (starting at any position) |
| **Aggregates** | Aggregate functions that are used in window functions (e.g., SUM, COUNT, AVG) |
| **Aliases** | Shorthand that can be used if there are several window functions in one query |
| **DENSE_RANK()** | Ranking function similar to RANK(), where ranks are not skipped with ties and ranking is the same among tied values |
| **Lag/Lead** | Calcuating differences between rows' values |
| **OVER** | Typically precedes the PARTITION BY function that signals what to group |
| **PARTITION BY** | A subclause of the OVER clause. Similar to GROUP BY |
| **Percentiles** | Defines what percentile a value falls into over the entire table |
| **RANK()** | Ranking function where rows with the same value get the same rank, and ranks skip for subsequent values in case of ties |
| **ROW_NUMBER()** | Ranking function where each row gets a different number, distinct amongst records even with ties in what the table is ranked against |

## Other Tips

Though SQL is **not case sensitive** (it does not care if you write your statements as all uppercase or lowercase), there are some best practices. **The order of the key words does matter!** Using what you know so far, you will write statements as:

```sql
SELECT   col1,
         col2
FROM     table1
WHERE    col3 > 5 
AND      col4 LIKE '%os%'
ORDER BY col5
LIMIT    10;
```
Notice, you can retrieve different columns than those being used in the **ORDER BY** and **WHERE** statements. Assuming all of these columns names existed in this way within a table called table1, this query would run just fine.

## EXAMPLES

### Basic SQL

#### Basic Query

```sql
SELECT id
       ,account_id
       ,occurred_at
  FROM orders;
```

#### LIMIT

```sql
SELECT occurred_at
       ,account_id
       ,channel
  FROM web_events
 LIMIT 15;
```

#### ORDER BY

```sql
SELECT id
       ,account_id
       ,total_amt_usd
  FROM orders
 ORDER BY total_amt_usd DESC
 LIMIT 20;
```

#### WHERE

##### WHERE with Numeric
```sql
SELECT *
  FROM orders
 WHERE total_amt_usd < 500
 LIMIT 10;
```

##### WHERE with Non-Numeric
```sql
SELECT name
       ,website
       ,primary_poc
  FROM accounts
 WHERE name = 'Exxon Mobil';
```

#### Arithmetic Operators

```sql
SELECT id
       ,account_id
       ,poster_amt_usd / (
        standard_amt_usd + gloss_amount_usd + poster_amt_usd
    ) AS post_per
  FROM orders
 LIMIT 10
```

#### LIKE

```sql
SELECT name
  FROM accounts
 WHERE name LIKE '%s'
```

#### IN

```sql
SELECT name
       ,primary_poc
       ,sales_rep_id
  FROM accounts
 WHERE name IN ('Walmart', 'Target', 'Nordstrom')
```

#### NOT

```sql
SELECT name
  FROM accounts
 WHERE name NOT LIKE '%one%'
```

#### AND

```sql
SELECT *
  FROM orders
 WHERE standard_qty > 1000 
   AND poster_qty = 0
   AND gloss_qty = 0 
```

#### BETWEEN

```sql
SELECT  *
  FROM web_events
 WHERE channel IN ('organic', 'adwords')
   AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01' 
```

#### OR

```sql
SELECT *
  FROM accounts
 WHERE (name LIKE 'C%' OR name LIKE 'W%')
   AND ((primary_poc LIKE '$ana%'
       OR primary_poc LIKE '%Ana%')
       AND (primary_poc NOT LIKE '%eana%')
   )
```

### JOINS

#### Basic Join
```sql
SELECT orders.standard_qty
       ,orders.gloss_qty
       ,orders.poster_qty
       ,accounts.website
       ,accounts.primary_poc
  FROM orders
  JOIN accounts
    ON orders.account_id = accounts.id
```

#### INNER JOIN
```sql
SELECT c.countryid
       ,c.countryName
       ,s.StateName
  FROM Country c
  JOIN State s
    ON c.countryid = s.countryid
```

#### LEFT JOIN

```sql
SELECT c.countryid
       ,c.countryName
       ,s.stateName
  FROM Country c
       LEFT JOIN State s
       ON c.countryid = s.countryid;
```

### SQL Aggregations

#### SUM

```sql
SELECT SUM(total_amt_usd) AS total_standard_sales
  FROM orders;
```

#### MIN

```sql
SELECT MIN(occured_at)
  FROM orders;
```

#### MAX

```sql
SELECT MAX(occurred_at)
  FROM web_events;
```

#### AVG

```sql
SELECT AVG(standard_qty) AS mean_standard
       ,AVG(gloss_qty) AS mean_gloss
       ,AVG(poster_qty) AS mean_poster
       ,AVG(standard_amt_usd) AS mean_standard_usd
       ,AVG(gloss_amt_usd) AS mean_gloss_usd
       ,AVG(poster_amt_usd) AS mean_poster_usd
  FROM orders;
```

#### GROUP BY

```sql
SELECT r.name
       ,COUNT(s.id) AS sales_reps
  FROM region AS r
  JOIN sales_reps AS s
    ON s.region_id = r.id
 GROUP BY r.name
 ORDER BY sales_reps;
```

#### DISTINCT

```sql
SELECT DISTINCT id
       ,name
  FROM sales_reps;
```

#### HAVING

```sql
SELECT a.id
       ,a.name
       ,w.channel
       ,COUNT(*) AS use_of_channel
  FROM accounts a
  JOIN web_events w
    ON a.id = w.account_id
 GROUP BY a.id, a.name, w.channel
HAVING COUNT(*) > 6 
   AND w.channel = 'facebook'
 ORDER BY use_of_channel;
```

#### DATE Functions

##### DATE_TRUNC

```sql
SELECT DATE_TRUNC('month', o.occurred_at) ord_date
       ,SUM(o.gloss_amt_usd) tot_spent
  FROM orders o 
  JOIN accounts a
    ON a.id = o.account_id
 WHERE a.name = 'Walmart'
 GROUP BY 1
 ORDER BY 2 DESC
 LIMIT 1;
```

##### DATE_PART

```sql
SELECT DATE_PART('month', occurred_at) AS ord_month
       ,COUNT(*) AS total_sales
  FROM orders
 WHERE DATE_PART('year', occurred_at) BETWEEN 2014 AND 2016
 GROUP BY 1
 ORDER BY 2 DESC;
```

#### CASE

```sql
SELECT s.name AS sales_rep_name
       ,COUNT(o.id) AS order_total
       ,SUM(o.total_amt_usd) AS sales_total
       ,CASE 
       WHEN COUNT(o.id) > 200 OR SUM(o.total_amt_usd) > 750000 THEN 'top'
       WHEN COUNT(o.id) > 150 OR SUM(o.total_amt_usd) > 500000 THEN 'middle'
       ELSE 'low' 
       END AS top_performing
  FROM orders AS o
  JOIN accounts AS a
    ON o.account_id = a.id
  JOIN sales_reps AS s
    ON a.sales_rep_id = s.id
 GROUP BY s.name
 ORDER BY SUM(o.total_amt_usd) DESC
```

### Subqueries

#### Simple Subquery

```sql
SELECT AVG(standard_qty) AS avg_std
       ,AVG(gloss_qty) AS avg_gls
       ,AVG(poster_qty) AS avg_pst
       ,SUM(total_amt_usd)
  FROM orders
 WHERE DATE_TRUNC('month', occurred_at) = 
       (SELECT DATE_TRUNC('month', MIN(occurred_at)) 
          FROM orders
    );
```

#### Complex Subquery

```sql
SELECT t3.id
       ,t3.name
       ,t3.channel
       ,t3.ct
  FROM (SELECT a.id
               ,a.name
               ,we.channel
               ,COUNT(*) AS ct
          FROM accounts a
          JOIN web_events we
            ON a.id = we.account_id
         GROUP BY a.id, a.name, we.channel
        ) AS T3
  JOIN (SELECT t1.id
               ,t1.name
               ,MAX(ct) AS max_chan
          FROM (SELECT a.id
                      ,a.name
                      ,we.channel
                      ,COUNT(*) AS ct
                 FROM accounts AS a
                 JOIN web_events AS we
                   ON a.id = we.account_id
                GROUP BY a.id, a.name, we.channel
                ) AS t1
         GROUP BY t1.id, t1.name
        ) AS t2
    ON t2.id = t3.id 
   AND t2.max_chan = t3.ct
 ORDER BY t3.id, t3.ct;
```

#### CTE

```sql
WITH t1 AS 
        (SELECT r.name region_name
                ,SUM(o.total_amt_usd) AS total_amt
           FROM sales_reps AS s
           JOIN accounts AS a
             ON a.sales_rep_id = s.id
           JOIN orders o
             ON o.account_id = a.id
           JOIN region r
             ON r.id = s.region_id
          GROUP BY r.name
        ), 

t2 AS   (SELECT MAX(total_amt)
           FROM t1
        )

SELECT r.name
       ,COUNT(o.total) AS total_orders
  FROM sales_reps s
  JOIN accounts a
    ON a.sales_rep_id = s.id
  JOIN orders o
    ON o.account_id = a.id
  JOIN region r
    ON r.id = s.region_id
 GROUP BY r.name
HAVING SUM(o.total_amt_usd) = (SELECT * FROM t2);
```

### Data Cleaning

#### STRING

```sql
SELECT SUM(vowels) vowels
       ,SUM(other) other
  FROM (SELECT name
               ,CASE 
               WHEN LEFT(UPPER(name), 1) IN ('A','E','I','O','U') 
               THEN 1 
               ELSE 0 
               END AS vowels, 
               CASE 
               WHEN LEFT(UPPER(name), 1) IN ('A','E','I','O','U') 
               THEN 0 
               ELSE 1 
               END AS other
          FROM accounts
        ) t1;
```

#### CAST

```sql
-- '||' is used to Concat strings
-- '::' is used to cast as datatype
SELECT date orig_date
       ,(SUBSTR(date, 7, 4) || '-' || LEFT(date, 2) || '-' || SUBSTR(date, 4, 2))::DATE AS new_date
  FROM sf_crime_data;
```

#### STRPOS

```sql
SELECT LEFT(name, STRPOS(name, ' ') -1 ) first_name
       ,RIGHT(name, LENGTH(name) - STRPOS(name, ' ')) last_name
  FROM sales_reps;
```

#### COALESCE

```sql
SELECT COALESCE(a.id, a.id) filled_id
        ,a.name, a.website
        ,a.lat
        ,a.long
        ,a.primary_poc
        ,a.sales_rep_id
        ,COALESCE(o.account_id, a.id) account_id
        ,o.occurred_at
        ,COALESCE(o.standard_qty, 0) standard_qty
        ,COALESCE(o.gloss_qty,0) gloss_qty
        ,COALESCE(o.poster_qty,0) poster_qty
        ,COALESCE(o.total,0) total
        ,COALESCE(o.standard_amt_usd,0) standard_amt_usd
        ,COALESCE(o.gloss_amt_usd,0) gloss_amt_usd
        ,COALESCE(o.poster_amt_usd,0) poster_amt_usd
        ,COALESCE(o.total_amt_usd,0) total_amt_usd
  FROM accounts a
       LEFT JOIN orders o
              ON a.id = o.account_id;
```

### WINDOW Functions

#### Running Total

```sql
SELECT standard_amt_usd
       ,SUM(standard_amt_usd) OVER (
            ORDER BY occurred_at
       ) AS running_total
  FROM orders
```

#### Partitioned Running Total

```sql
SELECT standard_amt_usd
       ,DATE_TRUNC('year', occurred_at) as year
       ,SUM(standard_amt_usd) OVER (
            PARTITION BY DATE_TRUNC('year', occurred_at)
            ORDER BY occurred_at
       ) AS running_total
  FROM orders
```

#### Ranking

```sql
SELECT id
       ,account_id
       ,total
       ,RANK() OVER (
            PARTITION BY account_id 
            ORDER BY total DESC
       ) AS total_rank
FROM orders
```

#### Comparing A Row to Previous Row

```sql
SELECT occurred_at
       ,total_amt_usd
       ,LEAD(total_amt_usd) OVER (
            ORDER BY occurred_at
       ) AS lead,
       LEAD(total_amt_usd) OVER (
            ORDER BY occurred_at
       ) - total_amt_usd AS lead_difference
  FROM (SELECT occurred_at
               ,SUM(total_amt_usd) AS total_amt_usd
          FROM orders 
         GROUP BY 1
       ) sub
```

#### NTILES

```sql
SELECT account_id
       ,occurred_at
       ,standard_qty
       ,NTILE(4) OVER(
            PARTITION BY account_id
            ORDER BY standard_qty
       ) AS standard_quartile
  FROM orders
 ORDER BY account_id DESC
```

### Advanced Techniques

#### JOIN with Inequality

```sql
SELECT accounts.name as account_name,
       accounts.primary_poc as poc_name,
       sales_reps.name as sales_rep_name
  FROM accounts
       LEFT JOIN sales_reps
         ON accounts.sales_rep_id = sales_reps.id
        AND accounts.primary_poc < sales_reps.name
```

#### Self JOIN
```sql
-- Find cases with a relationship
SELECT accounts.name as account_name
       ,accounts.primary_poc as poc_name
       ,sales_reps.name as sales_rep_name
  FROM accounts
  LEFT JOIN sales_reps
    ON accounts.sales_rep_id = sales_reps.id
   AND accounts.primary_poc < sales_reps.name
```

#### UNION

```sql
CREATE VIEW web_events_2 AS (
       SELECT * 
         FROM web_events
       )

SELECT channel
       ,COUNT(*) AS sessions
  FROM (SELECT *
          FROM web_events
         UNION ALL
        SELECT *
          FROM web_events_2
       ) web_events
 GROUP BY 1
 ORDER BY 2 DESC

CREATE VIEW web_events_2 AS (
       SELECT * 
         FROM web_events
       )

WITH web_events AS (
    SELECT *
      FROM web_events
     UNION ALL
    SELECT *
      FROM web_events_2
)
SELECT channel
       ,COUNT(*) AS sessions
  FROM web_events
 GROUP BY 1
 ORDER BY 2 DESC
```


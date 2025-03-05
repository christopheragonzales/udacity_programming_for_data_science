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

## Other Tips

Though SQL is **not case sensitive** (it does not care if you write your statements as all uppercase or lowercase), there are some best practices. **The order of the key words does matter!** Using what you know so far, you will write statements as:

```sql
SELECT col1, col2
FROM table1
WHERE col3 > 5 AND col4 LIKE '%os%'
ORDER BY col5
LIMIT 10;
```
Notice, you can retrieve different columns than those being used in the **ORDER BY** and **WHERE** statements. Assuming all of these columns names existed in this way within a table called table1, this query would run just fine.

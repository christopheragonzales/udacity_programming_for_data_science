# SQL Recap

## Commands

|**STATEMENT**|**HOW TO USE IT**              |**OTHER DETAILS**                                         |
|:------------|:------------------------------|:---------------------------------------------------------|
|SELECT       |SELECT **Col1, Col2, ...**     |Provide the columns you want                              |
|FROM         |FROM **Table**                 |Provide the table where the columns exist                 |
|LIMIT        |LIMIT **10**                   |Limits based number of rows returned                      |
|ORDER BY     |ORDER BY **Col**               |Orders table based on the column. Used with **DESC**      |
|WHERE        |WHERE **Col > 5**              |A conditional statement to filter your results            |
|LIKE         |WHERE **Col LIKE '%me%'**      |Only pulls the rows where column has 'me' within the text.|
|IN           |WHERE **Col IN ('Y', 'N')**    |A filter for only rows with column of 'Y' or 'N'          |
|NOT          |WHERE **Col NOT IN ('Y', 'N')**|NOT is frequently used with **LIKE** and **IN**           |
|AND          |WHERE **Col1 > 5 AND Col2 < 3**|Filter rows where two or more condtions must be true      |
|OR           |WHERE **Col > 5 OR Col2 < 3**  |Filter rows where at least one condition must be true     |
|BETWEEN      |WHERE **Col BETWEEN 3 AND 5**  |Ofter easier syntax than using an AND                     |

## Key Terms

|**Key Term**                     |**Definition**                                                                                                                     |
|:--------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|
|CREATE TABLE                     |Is a statement that creates a new table in a database                                                                              |
|DROP TABLE                       |Is a statement that removes a table in a database                                                                                  |
|Entity-Relationship Diagram (ERD)|A common way to view data in a database                                                                                            |
|FROM                             |Specifies from which table(s) you want to select the columns. Notice the columns need to exist in this table.                      |
|SELECT                           |Allows you to read datra and display it. This is called a query and it specifies from which table(s) you want to select the columns|

## Other Tips

Though SQL is **not case sensitive** (it does not care if you write your statements as all uppercase or lowercase), there are some best practices. **The order of the key words does matter!** Using what you know so far, you will write statements as:

```SQL
SELECT col1, col2
FROM table1
WHERE col3 > 5 AND col4 LIKE '%os%'
ORDER BY col5
LIMIT 10;
```

Notice, you can retrieve different columns than those being used in the **ORDER BY** and **WHERE** statements. Assuming all of these columns names existed in this way within a table called table1, this query would run just fine.

## Lesson Overview

Now that we have completed this lesson, we have covered the following and you are able to:

- Describe why SQL is important
- Explain how SQL data is stored and structured
- Create SQL queries using proper sytanx, including:
  - SELECT & FROM
  - LIMIT
  - ORDER BY
  - WHERE
  - LIKE
  - IN
  - NOT
  - AND
  - BETWEEN
  - OR
  - Basic artithmetic operations

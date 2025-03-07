# NOTES

## SQL Composite Key

A composite key is a combination of two or more columns in a table that can be used to uniquely identify each row in the table when the columns are combined uniqueness is guaranteed, but when it taken individually it does not guarantee uniqueness.

Sometimes more than one attributes are needed to uniquely identify an entity. A primary key that is made by the combination of more than one attribute is known as a composite key.

In other words we can say that:

Composite key is a key which is the combination of more than one field or column of a given table. It may be a candidate key or primary key.

### Example

```sql
CREATE TABLE SAMPLE_TABLE (
    col_1   INTEGER,
    col_2   VARCHAR(30),
    col_3   VARCHAR(50)

    PRIMARY KEY (col_1, col_2)
)
```
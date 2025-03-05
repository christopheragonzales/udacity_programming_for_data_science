# Entity Relationship Diagram (ERD) for Parch and Posey Database

## web_events

|**Column Name**|**Description**|
|:--------------|:--------------|
|id|Unique identifier for each web event|
|account_id|Foreign key referencing the accounts table (id)|
|occurred_at|Timestamp when the web event occurred|
|channel|Channel through which the web event occurred|

Relationship:

- account_id in the web_events table is a foreign key linked to the id (primary key) in the accounts table

## Accounts

|**Column Name**|**Description**|
|:--------------|:--------------|
|id|Unique Identifier for each account|
|name|Name of the account|
|website|Website of the account|
|lat|Latitude of the account location|
|lang|Longitude of the account location|
|primary_poc|Primary point of contact for the account|
|sales_rep_id|Foreign key referencing the sales_rep table(id)|

Relationship:

- sales_rep_id in the accounts table is a foreign key linked to the id (primary key) in the sales_rep table

## orders

|**Column Name**|**Description**|
|:--------------|:--------------|
|id|Unique identifier for each order|
|account_id|Foreign key referencing the accounts table (id)|
|standard_qty|Quantity of standard products ordered|
|glossy_qty|Quantity of glossy products ordered|
|total|Total quantity of products ordered|
|occurred_at|Timestamp when the order occurred|
|standard_amt_usd|Amount in USD for standard products|
|gloss_amyt_usd|Amount in USD for glossy products|
|poster_amt_usd|Amount in USD for poster products|
|total_amount_usd|Total amount in USD for the order|

Relationship:

- account_id in the orders table is a foreign key linked to the id (primary key) in the accounts table

## sale_rep

|**Column Name**|**Description**|
|:--------------|:--------------|
|id|Unique Identifier for each sales representative|
|name|Name of the sales representative|
|region_id|Foreign key referencing the region table (id)|

Relationship:

- region_id in the sales_reps table is a foreign key linked to the id (primary key) in the region table

## region

|**Column Name**|**Description**|
|:--------------|:--------------|
|id|Unique identifier for each region|
|name|Name of the Region|

## Tables and Columns

1. **web_events**
2. **accounts**
3. **orders**
4. **sales_reps**
5. **region**

## ERD Diagram

![alt text](/introduction_to_sql/figures/parch_and_posey_erd_diagram.png "Diagram of Parch and Posey Entity Relationship")
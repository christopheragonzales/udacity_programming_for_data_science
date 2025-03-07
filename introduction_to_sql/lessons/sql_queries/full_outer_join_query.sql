SELECT *
  FROM accounts
       FULL JOIN sales_reps 
       ON accounts.sales_rep_id = sales_reps.i
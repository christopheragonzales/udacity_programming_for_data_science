SELECT w.channel
     , a.name
     , a.primary_poc
  FROM web_events as w
  JOIN accounts as a
    ON w.account_id = a.id 
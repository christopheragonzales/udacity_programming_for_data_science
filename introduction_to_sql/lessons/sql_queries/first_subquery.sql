SELECT channel
     , AVG(event_count) AS avg_event_count
  FROM(SELECT DATE_TRUNC('day', occurred_at) AS day
          , channel
          , COUNT(*) AS event_count
       FROM web_events
   GROUP BY 1, 2
) AS sub
GROUP BY 1
ORDER BY 2 DESC;
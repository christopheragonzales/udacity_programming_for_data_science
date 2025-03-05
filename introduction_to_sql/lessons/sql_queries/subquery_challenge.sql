SELECT 
    t3.id,
    t3.name,
    t3.channel,
    t3.ct
FROM (
    SELECT 
        a.id,
        a.name,
        we.channel, 
        COUNT(*) AS ct
    FROM 
        accounts AS a
    JOIN 
        web_events AS we
    ON 
        a.id = we.account_id
    GROUP BY 
        a.id, a.name, we.channel
) AS t3
JOIN (
    SELECT 
        t1.id,
        t1.name, 
        MAX(ct) AS max_chan
    FROM (
        SELECT 
            a.id,
            a.name, 
            we.channel, 
            COUNT(*) AS ct
        FROM 
            accounts AS a
        JOIN 
            web_events AS we
        ON 
            a.id = we.account_id
        GROUP BY 
            a.id, a.name, we.channel
    ) AS t1
    GROUP BY 
        t1.id, t1.name
) AS t2
ON 
    t2.id = t3.id 
    AND t2.max_chan = t3.ct
ORDER BY 
    t3.id, t3.ct;
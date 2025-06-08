SELECT id, name,
       (CASE WHEN age BETWEEN 10 and 20 THEN 'interval #1'
                               when age BETWEEN 21 and 23 THEN 'interval #2'
                               ELSE 'interval #3' END) as interval_info
FROM person
ORDER BY interval_info;
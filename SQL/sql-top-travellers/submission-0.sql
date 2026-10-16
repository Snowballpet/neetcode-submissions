SELECT u.name, COALESCE(SUM(r.distance),0) as travelled_distance
--coalesce makes the NULL value to replace with 0 
FROM users u LEFT JOIN rides r -- left join to get all the rider names
ON r.user_id = u.id

GROUP BY r.user_id, 1
--since u.name (select parameters) is not in aggregate function need to be in group by
ORDER BY 2 DESC, 1 
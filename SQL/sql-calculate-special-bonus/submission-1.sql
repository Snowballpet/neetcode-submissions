-- Write your query below
select employee_id,
CASE --if else in SQL
    WHEN employee_id % 2 !=0 and name not LIKE 'M%'
THEN salary
    else 0
END as bonus
FROM employees Order by employee_id

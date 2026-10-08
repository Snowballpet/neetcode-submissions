-- select c.customer_id, c.customer_name from customers c
-- inner join orders o on c.customer_id = o.customer_id
-- where o.product_name in ('A', 'B') and
--     o.order_id not in (
--         select order_id from orders
--         where product_name = 'C'
--     )
-- group by c.customer_id,c.customer_name -- used in select query and can't go before where caluse but can go before having 
-- HAVING COUNT(DISTINCT o.product_name) = 2 -- in A,B gives output for only A or B or both, if count = 2 then it considers both

-- Write your query below
select c.customer_id, c.customer_name from customers c
join orders o on c.customer_id = o.customer_id
group by c.customer_id,c.customer_name

Having count(distinct 
    case 
        when o.product_name in ('A','B') 
        then o.product_name END ) = 2
AND count(
    case 
        when o.product_name = 'C' 
        then 1 END) = 0

order by c.customer_name -- order by is always at the end
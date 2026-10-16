SELECT seller_name FROM seller
WHERE seller_id NOT in (
    SELECT seller_id FROM orders
    -- WHERE EXTRACT(YEAR FROM sale_date) = 2020 
    -- or can use this format
    -- WHERE DATE_PART('year', sale_date) = 2020
    --for better performance
    WHERE sale_date >= DATE '2020-01-01'AND sale_date < DATE '2021-01-01'
)
ORDER BY seller_name
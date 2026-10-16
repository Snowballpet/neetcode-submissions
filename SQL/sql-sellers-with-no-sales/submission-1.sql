SELECT seller_name FROM seller s
LEFT JOIN orders o ON o.seller_id = s.seller_id --right join can't be used as seller_id/name will be null and inner jin takes all the values
  AND o.sale_date >= DATE '2020-01-01'
  AND o.sale_date <  DATE '2021-01-01'
WHERE o.order_id is NULL
ORDER BY seller_name
-- what does customer base look like
-- total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- customer distribution by revenue = which segment contributes the most of the cust base

SELECT
    revenue_tier,
    COUNT(*) AS customer_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM customers),
        2
    ) AS percentage
FROM customers
GROUP BY revenue_tier
ORDER BY customer_count DESC;


-- average customer lifetime value = average value of customer
select ROUND(avg(customer_lifetime_value),2) as avg_clv
from customers;


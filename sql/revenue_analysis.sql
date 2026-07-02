-- revenue lost from churn = how much recurring revenue are we losing
SELECT

    ROUND(
        SUM(
            CASE
                WHEN Churn='Yes'
                THEN MonthlyCharges
                ELSE 0
            END
        ),
        2
    ) AS monthly_revenue_lost

FROM subscriptions;


-- high value customer lost = are best customers leaving?
SELECT
    COUNT(*) AS high_value_customers_lost

FROM customers c

JOIN subscriptions s
ON c.customerID = s.customerID

WHERE
    c.revenue_tier='Gold'
    AND
    s.Churn='Yes';


-- revenue at risk by segment = which segment is hurting financially
SELECT

    c.revenue_tier,

    ROUND(
        SUM(
            CASE
                WHEN s.Churn='Yes'
                THEN s.MonthlyCharges
                ELSE 0
            END
        ),
        2
    ) AS revenue_lost

FROM customers c

JOIN subscriptions s
ON c.customerID = s.customerID

GROUP BY c.revenue_tier

ORDER BY revenue_lost DESC;
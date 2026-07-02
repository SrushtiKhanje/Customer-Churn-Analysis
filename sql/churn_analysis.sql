-- how severe is churn problem 
-- overall churn rate = percentage of customers leaving. yes -> churned, no-> retained
select Churn, COUNT(*) as customers,
ROUND(
    COUNT(*) * 100.0 / (select COUNT(*) from subscriptions), 2
) as percentage
from subscriptions
GROUP BY Churn;


-- churn by revenue tier = shows if we are losing value customers
select c.revenue_tier, COUNT(*) as total_customers,
SUM(
    CASE
        when s.Churn = 'Yes'
        then 1
        else 0
    END
) as churned_customers,

ROUND(
    SUM(
        CASE
            WHEN s.Churn = 'Yes'
            THEN 1
            ELSE 0
        END
    ) * 100.0 / COUNT(*),
    2
) as churn_rate

FROM customers c

JOIN subscriptions s
ON c.customerID = s.customerID

GROUP BY c.revenue_tier;


-- churn by contract type = Monthly customers churn significantly more than long term contracts.
SELECT
    Contract,

    COUNT(*) AS customers,

    SUM(
        CASE
            WHEN Churn='Yes'
            THEN 1
            ELSE 0
        END
    ) AS churned,

    ROUND(
        SUM(
            CASE
                WHEN Churn='Yes'
                THEN 1
                ELSE 0
            END
        ) * 100.0 /
        COUNT(*),
        2
    ) AS churn_rate

FROM subscriptions

GROUP BY Contract

ORDER BY churn_rate DESC;
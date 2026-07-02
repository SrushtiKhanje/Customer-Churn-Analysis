-- billing risk vs churn = are billing risk and churn related and can billing risk predict churn
SELECT
    billing_risk_score,

    COUNT(*) AS customers,

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

GROUP BY billing_risk_score

ORDER BY billing_risk_score;


-- support frustration vs churn = are frustated cust leaving often
SELECT
    support_frustration_score,

    COUNT(*) AS customers,

    ROUND(
        SUM(
            CASE
                WHEN sub.Churn='Yes'
                THEN 1
                ELSE 0
            END
        ) * 100.0 /
        COUNT(*),
        2
    ) AS churn_rate

FROM support sup

JOIN subscriptions sub
ON sup.customerID = sub.customerID

GROUP BY support_frustration_score

ORDER BY support_frustration_score;


-- service adoption vs churn = highly engaged cutomers stay longer
SELECT
    service_adoption_score,

    COUNT(*) AS customers,

    ROUND(
        SUM(
            CASE
                WHEN sub.Churn='Yes'
                THEN 1
                ELSE 0
            END
        ) * 100 /
        COUNT(*),
        2
    ) AS churn_rate

FROM services ser

JOIN subscriptions sub
ON ser.customerID = sub.customerID

GROUP BY service_adoption_score

ORDER BY service_adoption_score;


-- top 10 highest clv customers
SELECT
    customerID,
    customer_lifetime_value

FROM customers

ORDER BY customer_lifetime_value DESC

LIMIT 10;

-- average clv by churn status = high value customers more loyal
SELECT

    s.Churn,

    ROUND(
        AVG(c.customer_lifetime_value),
        2
    ) AS avg_clv

FROM customers c

JOIN subscriptions s
ON c.customerID=s.customerID

GROUP BY s.Churn;

-- churn driver ranking 
SELECT
    churn_risk_segment,
    COUNT(*) AS customers

FROM subscriptions

GROUP BY churn_risk_segment;
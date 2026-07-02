-- recommendations
-- high risk customers = which customers should we save first?
SELECT
    customerID,
    churn_risk_segment,
    MonthlyCharges

FROM subscriptions

WHERE churn_risk_segment='High Risk'

ORDER BY MonthlyCharges DESC;

-- customers worth immediate retention = retention priority list
SELECT
    c.customerID,

    c.revenue_tier,

    s.MonthlyCharges,

    s.churn_risk_segment

FROM customers c

JOIN subscriptions s
ON c.customerID=s.customerID

WHERE

    c.revenue_tier='Gold'

    AND

    s.churn_risk_segment='High Risk';



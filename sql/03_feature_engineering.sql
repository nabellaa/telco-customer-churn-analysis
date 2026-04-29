-- Goal: Create metrics for dashboard & deeper analysis

-- Convert TotalCharges to numeric
SELECT 
    customerID,
    tenure,
    MonthlyCharges,
    CAST(TotalCharges AS FLOAT) AS TotalCharges
FROM customer_churn;

-- Customer Lifetime Value
SELECT 
    customerID,
    tenure,
    MonthlyCharges,
    tenure * MonthlyCharges AS estimated_clv
FROM customer_churn;

-- Create churn risk segments
SELECT 
    customerID,
    CASE 
        WHEN tenure < 12 AND MonthlyCharges > 70 THEN 'High Risk'
        WHEN tenure < 12 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS churn_risk_segment
FROM customer_churn;

-- Profit / revenue loss from churn
SELECT 
    SUM(MonthlyCharges) AS lost_monthly_revenue
FROM customer_churn
WHERE Churn = 'Yes';


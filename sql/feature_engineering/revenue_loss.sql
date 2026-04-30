SELECT SUM(MonthlyCharges) AS lost_monthly_revenue
FROM customer_churn
WHERE Churn = 'Yes';